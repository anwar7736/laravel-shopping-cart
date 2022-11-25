<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\OrderDetails;
use App\Models\ProductStock;
use App\Utils\Util;
use DB;
class CheckoutController extends Controller
{
    public function checkout(Request $request)
    {

        DB::beginTransaction();

        try{

            $data = [];
            $data['user_id'] = 1;
            $data['invoice_no'] = 'INV'.rand(1111111111,9999999999);
            $data['amount'] =  $request->total_price;
            $data['charge'] = 0;
            $data['discount'] = $request->total_discount;
            $data['total'] = (float)(($request->total_price + $data['charge']) - $request->total_discount);

            $order = Order::create($data);
            $cart = session()->get('cart2', []);
            $order_details = [];
            foreach($cart as $key => $item)
            {
                $currentStock = Util::checkStock($key);
                $itemQty = $item['quantity2'];

                if($currentStock < $itemQty)
                {
                    return response()->json(['success' => false, 'msg'=> $item['name2'].' '.$currentStock.' pcs available']);
                }

                $newQty = $currentStock - $itemQty;

                Util::decreaseStock($key, $newQty);

                $order_details[] = [
                    'product_id' => $key,
                    'quantity' => $itemQty,
                    'price' => $item['price2'],
                    'discount' => $item['discount2'],
                    'total' => $item['price2'] * $itemQty,
                ];

            }

            if(!empty($order_details))
            {
                $order->details()->createMany($order_details);
            }

            DB::commit();

            session()->put('cart2', []);

            $total = total_cart_items();

            return response()->json(['success' => true, 'msg'=> 'Checkout successfully', 'total' => $total]);
        }
        catch(\Exception $e)
        {
            DB::rollback();
            \Log::info('Error: '.$e->getMessage());
        }
    }
}
