<?php
function product_discount($product = null)
{
    if(!empty($product))
    {
        if($product->discount > 0)
        {
            return floor(-$product->discount / $product->price * 100)."% price dropped";
        }
        
        
    }
}

function product_stock($product = null)
{
    if(!empty($product))
    {
        if($product->stock->quantity > 0)
        {
             return "<span class='text-success'>In Stock</span>";
        }

        return "<span class='text-danger'>Out of Stock</span>";
        
    }
}

function total_cart_items()
{
    return count(session()->get('cart2', []));
}

function total_cart_items2()
{
    return count(Cart::instance('cart_list')->content());
}