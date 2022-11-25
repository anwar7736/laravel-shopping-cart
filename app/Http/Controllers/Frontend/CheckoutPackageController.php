<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\ProductStock;
use App\Utils\Util;
use DB, Cart;
class CheckoutPackageController extends Controller
{
    public function checkout(Request $request)
    {

        DB::beginTransaction();

        try{

            $data = [];
            $data['user_id'] = 1;
            $data['invoice_no'] = 'INV'.rand(1111111111,9999999999);
            $data['amount'] =  $request->total_price2;
            $data['charge'] = 0;
            $data['discount'] = $request->total_discount2;
            $data['total'] = (float)(($request->total_price2 + $data['charge']) - $request->total_discount);

            $order = Order::create($data);
            $cart = Cart::instance('cart_list')->content();
            $order_details = [];
            foreach($cart as $key => $item)
            {
                $currentStock = Util::checkStock($item->id);
                $itemQty = $item->qty;

                if($currentStock < $itemQty)
                {
                    return response()->json(['success' => false, 'msg'=> $item->name.' '.$currentStock.' pcs available']);
                }

                $newQty = $currentStock - $itemQty;

                Util::decreaseStock($item->id, $newQty);

                $order_details[] = [
                    'product_id' => $item->id,
                    'quantity' => $itemQty,
                    'price' => $item->price,
                    'discount' => $item->discount,
                    'total' => $item->price * $itemQty,
                ];

            }

            if(!empty($order_details))
            {
                $order->details()->createMany($order_details);
            }


            Cart::destroy();


            $total = total_cart_items2();

            DB::commit();

            return response()->json(['success' => true, 'msg'=> 'Checkout successfully', 'total' => $total]);
        }
        catch(\Exception $e)
        {
            DB::rollback();
            \Log::info('Error: '.$e->getMessage());
        }
    }
}
