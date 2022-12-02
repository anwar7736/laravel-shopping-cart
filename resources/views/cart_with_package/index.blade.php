@extends('layouts.master')
@section('title', 'All Package Cart List')
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
                        <td>{{$item->rowId}}</td>
                        <td>{{$item->name}}</td>
                        <td>{{$item->price}}</td>
                        <td>{{$item->discount > 0 ? $item->discount : ''}}</td>
                        <td>
                          <input type="number"  name="quantity2" class="quantity2" value="{{$item->qty}}" min="1" data-id="{{$item->rowId}}" data-item="{{$item->id}}">
                        </td>
                        <td>
                            @php 
                                $total_price = $item->price * $item->qty;
                                $total += $total_price;
                                $discount += $item->discount * $item->qty ;
                            @endphp
                            {{$total_price}}
                        </td>
                        <td>
                            <form id="remove_cart_item_form2" action="{{ route('cart.package.destroy', $item->rowId)}}" method="POST">
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
                <form action="{{ route('checkout.package') }}" method="POST" id="checkoutPackage">
                    @csrf
                    <input type="hidden" name="total_price2" value="{{$total}}" >
                    <input type="hidden" name="total_discount2" value="{{$discount}}" >
                    <button  type="submit" class="btn btn-danger btn-lg checkOutBtn2" @if(count($cart) < 1) style='display:none' @endif>Checkout Now!</button>
                </form>
                </div>
                <div class="cart-summary2 card text-center">
                    <h5>Total Price: {{$total}}</h5>
                    <h5>Total Discount : {{$discount}}</h5>
                    <h5>Sub Total : {{$total + $discount}}</h5>
                </div>
            </tbody>
    </table>
    </div>

</div> 

@endsection