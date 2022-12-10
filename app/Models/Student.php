<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function board()
    {
        return $this->belongsTo(Board::class);
    }   
    
    public function institute()
    {
        return $this->belongsTo(Institute::class);
    }
}
