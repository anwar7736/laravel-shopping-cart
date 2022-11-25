<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Utils\Util;
use App\Models\Product;


class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cart = session()->get('cart2', []);
        return view('cart_with_session.index', compact('cart'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $cart = session()->get('cart2', []);
        $product = Product::findOrFail($request->product_id);
        $currentStock =  Util::checkStock($product->id);

        if($currentStock < 1)
        {
            return response()->json(['success' => false, 'msg'=> 'Product out of stock!']);
        }

        if(isset($cart[$product->id]))
        {

           $new_qty = $cart[$product->id]['quantity2'] + 1;
           if($new_qty > $currentStock)
           {
                return response()->json(['success' => false, 'msg'=> 'Product out of stock!']);
           }

           $cart[$product->id]['quantity2'] = $new_qty;
        }

        else {
            $cart[$product->id] = [
            'id2' => $product->id,
            'name2' => $product->name,
            'price2' => $product->price,
            'quantity2' => 1,
            'discount2' => $product->discount,
            'image2' => $product->image,
            ];

           
        }
        session()->put('cart2', $cart);
        $total = total_cart_items();

        return response()->json(['success' => true, 'msg'=> 'Product added to cart list', 'total' => $total]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $new_qty = request()->get('quantity');
        $currentStock =  Util::checkStock($id);
        if($new_qty > $currentStock)
        {
            return response()->json(['success' => false, 'msg'=> 'Product '.$currentStock.' pcs available']);
        }
        $cart = session()->get('cart2');

        $cart[$id]['quantity2'] = $new_qty;
        session()->put('cart2', $cart);

        return response()->json(['success' => true, 'msg'=> 'Product quantity updated']);



    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cart = session()->get('cart2', []);

        if(isset($cart[$id]))
        {
            unset($cart[$id]);
            session()->put('cart2', $cart);
        }

        $total = total_cart_items();

        return response()->json(['success' => true, 'msg'=> 'Product removed from cart list', 'total' => $total]);
    }
}
