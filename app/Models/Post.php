<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    public function categories()
    {
        return $this->morphToMany(Category::class, 'categoryable');
    }

    public function creator()
    {
        return $this->belongsTo(User::class, 'user_id');
    }    
    
    public function likes()
    {
        return $this->morphMany(Like::class, 'likeable')->where('liked', 1);
    }    
    
    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

}
