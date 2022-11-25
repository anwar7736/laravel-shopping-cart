<?php
namespace App\Utils;
use App\Models\ProductStock;

class Util {
    public static function checkStock($id)
    {
        $stock = ProductStock::where(['product_id' => $id])->first();
        return $stock->quantity;
    }
    
    public static function increaseStock()
    {
        
    }
    
    public static function decreaseStock($id, $qty)
    {
        ProductStock::where(['product_id' => $id])->update(['quantity'=>$qty]);
        
        return true;
    } 
    
    public static function updateStock()
    {
        
    }
}