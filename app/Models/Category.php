<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public function posts()
    {
        return $this->morphedByMany(Post::class, 'categoryable');
    }         

     public function products()
    {
        return $this->morphedByMany(Product::class, 'categoryable');
    }
}
