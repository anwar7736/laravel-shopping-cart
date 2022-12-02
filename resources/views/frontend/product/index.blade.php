@extends('layouts.master')
@section('title', 'All Product List')
@section('content')
 <div class="container-fluid">
    <div class="row">
    <span class="mb-3">{{$products->links()}}</span>
      @forelse($products as $key => $product)
      <div class="col-md-2 mb-3">
         <div class="card">
            <div class="card-body">
               <img class="card-img" src="{{ asset('images/Hydrangeas.jpg') }}" alt="No image found">
               <div class="card-title">
                  <h6 >{{$product->name}}</h6>
                  <h6 class="text-danger">
                     @if($product->discount > 0)
                        <del class="text-muted">${{$product->price}}</ class="text-muted"></del>
                        <span>${{$product->price - $product->discount}}</span>
                     @else
                        <span>${{$product->price}}</span>
                     @endif
                  </h6>
                  <h6 class="text-muted">{{product_discount($product)}}</h6>
                  <h6>{!! product_stock($product) !!}</h6>
                  <form action="{{ route('cart.session.store') }}" method="POST" id="add_to_cart_form" class="text-center">
                     @csrf
                     <input type="hidden"  name="product_id" id="product_id" value="{{$product->id}}">
                     <button type="submit" class="btn btn-success btn-sm add-to-cart" >Add to Cart</button>
                  </form>    
                  <br>              
                  <form action="{{ route('cart.package.store') }}" method="POST" id="add_to_cart_package_form" class="text-center">
                     @csrf
                     <input type="hidden"  name="product_id2" id="product_id2" value="{{$product->id}}">
                     <button type="submit" class="btn btn-danger btn-sm add-to-cart2" >Add to Cart Package</button>
                  </form>
               </div>
            </div>
         </div>
      </div>
      @empty
         <div class="mt-5">
            <center>
               <h2 class="text-light">No product found!</h2>
            </center>
         </div>
      @endforelse
    </div>
 </div>
@endsection