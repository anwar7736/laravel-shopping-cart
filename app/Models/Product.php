<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function stock()
    {
        return $this->hasOne(ProductStock::class);
    }

    public function images()
    {
        return $this->morphMany(Image::class, 'imageable');
        
    }
    
    public function categories()
    {
        return $this->morphToMany(Category::class, 'categoryable');
    }

}
