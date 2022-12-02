@extends('layouts.master')
@section('title', 'All Cart List')
@section('content')
 <div class="container-fluid">
    <div class="table-responsive">
        <table class="table table-bordered table-striped bg-light text-dark">
            <thead>
                <tr>
                    <th>Sl</th>
                    <th>Image</th>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Discount</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Action</th>
                </tr>
            </thead>
            @php 
                $total = 0;
                $discount = 0;
            @endphp
            <tbody>
                @forelse($cart as $key => $item)
                    <tr>
                        <td>{{$loop->index + 1}}</td>
                        <td><img src="#" alt="No image"/></td>
                        <td>{{$item['name2']}}</td>
                        <td>{{$item['price2']}}</td>
                        <td>{{$item['discount2'] > 0 ? $item['discount2'] : ''}}</td>
                        <td>
                          <input type="number"  name="quantity" class="quantity" value="{{$item['quantity2']}}" min="1" data-id="{{$key}}">
                        </td>
                        <td>
                            @php 
                                $total_price = $item['price2'] * $item['quantity2'];
                                $total += $total_price;
                                $discount += $item['discount2'] * $item['quantity2'] ;
                            @endphp
                            {{$total_price}}
                        </td>
                        <td>
                            <form id="remove_cart_item_form" action="{{ route('cart.session.destroy', [$key])}}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm px-3">X</button>
                            </form>
                    </td>
                    </tr>
                @empty
                <div class="mt-5 text-danger">
                    <center>
                        <h3>No item found in your cart list</h3>
                    </center>
                </div>
                @endforelse
                <div align="center" class="mb-3">
                <form action="{{ route('checkout.session') }}" method="POST" id="checkout">
                    @csrf
                    <input type="hidden" name="total_price" value="{{$total}}" >
                    <input type="hidden" name="total_discount" value="{{$discount}}" >
                    <button  type="submit" class="btn btn-danger btn-lg checkOutBtn" @if(count($cart) < 1) style='display:none' @endif>Checkout Now!</button>
                </form>
                </div>
                <div class="cart-summary card text-center">
                    <h5>Total Price: {{$total}}</h5>
                    <h5>Total Discount : {{$discount}}</h5>
                    <h5>Sub Total : {{$total + $discount}}</h5>
                </div>
                
            </tbody>
    </table>
    </div>

</div> 

@endsection