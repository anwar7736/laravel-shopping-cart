<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Utils\Util;
use Cart;

class CartPackageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cart = Cart::instance('cart_list')->content();
        return view('cart_with_package.index', compact('cart'));
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
        $cart = Cart::instance('cart_list')->content();
        $product = Product::findOrFail($request->product_id2);
        $currentStock =  Util::checkStock($product->id);

        if($currentStock < 1)
        {
            return response()->json(['success' => false, 'msg'=> 'Product out of stock!']);
        }

        Cart::instance('cart_list')->add(['id'=>$product->id, 'name'=>$product->name, 'qty' => 1, 'price'=>$product->price, 'discount'=>$product->discount, 'weight'=>0]);
    
        $total = total_cart_items2();

        return response()->json(['success' => true, 'msg'=> 'Product added to cart list2', 'total' => $total]);
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
        $product_id = request()->get('item');
        $currentStock =  Util::checkStock($product_id);
        if($new_qty > $currentStock)
        {
            return response()->json(['success' => false, 'msg'=> 'Product '.$currentStock.' pcs available']);
        }

        Cart::instance('cart_list')->update($id, $new_qty);

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
        Cart::instance('cart_list')->remove($id);

        $total = total_cart_items2();

        return response()->json(['success' => true, 'msg'=> 'Product removed from cart list', 'total' => $total]);

    }
}
