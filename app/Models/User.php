<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Hash;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, SoftDeletes;


    protected $guarded = [];
    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $appends = ['image_path'];

    public function getImageAttribute($image)
    {
        return asset('images/'.$image);
    }    
    
    public function getImagePathAttribute($image)
    {
        return public_path('images', $image);
    }

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'properties' => 'array'
    ];

    public function orders()
    {
        return $this->hasMany(Order::class);
    }
    
    public function orderDetails()
    {
        return $this->hasManyThrough(OrderDetail::class, Order::class);
    }

    public function setPasswordAttribute($value)
    {
        return $this->attributes['password'] = Hash::make($value);
    }

    public function answers()
    {
        return $this->hasMany(ExamResult::class);
    }

    public function phone()
    {
        return $this->hasOne(Phone::class)->withDefault();
        
    }    
    
    public function roles()
    {
        return $this->belongsToMany(Role::class)->withTimestamps();
        
    }    
    
    public function images()
    {
        return $this->morphMany(Image::class, 'imageable');
        
    }    

    public function latestPost()
    {
        return $this->hasOne(Post::class)->latestOfMany();
    }       
    
    public function oldestPost()
    {
        return $this->hasOne(Post::class)->oldestOfMany();
    }       
    
    public function popularPost()
    {
        return $this->hasOne(Post::class)->ofMany('id', 'max');
    }       
    
    public function posts()
    {
        return $this->hasMany(Post::class);
    }   

    public function bookings()
    {
        return $this->hasMany(Booking::class, 'user_id');
    }
    

}
