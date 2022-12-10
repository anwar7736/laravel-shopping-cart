<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Result extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function board()
    {
        return $this->belongsTo(Board::class);
    }   
    
    public function exam_type()
    {
        return $this->belongsTo(ExamType::class);
    }   
    
    public function student()
    {
        return $this->belongsTo(Student::class);
    }   
    
    public function subject()
    {
        return $this->belongsTo(Subject::class);
    }
}
