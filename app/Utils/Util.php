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

    public static function uploadFile($file = null, $folder = null)
    {
        $new_name = "";
        if(!empty($file && $folder))
        {
            $new_name = rand().'.'.$file->extension();
            $file->move(public_path('images'), $new_name);
        }

        return $new_name;
    } 
    
    public static function deleteFile($path = null)
    {
        if(!empty($path))
        {
            if(file_exists($path))
            {
                unlink($path);
            }
        }

        return true;
    }
}