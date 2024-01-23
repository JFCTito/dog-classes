<?php

namespace App\Models;

use CloudinaryLabs\CloudinaryLaravel\MediaAlly;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Dog extends Model
{
    use HasFactory, MediaAlly;

    protected $fillable = [

        'photo',  
        'breed',
        'size', 
        'hairColor'        
    ];
}
