<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Tazelik extends Model
{
     protected $fillable = [
        'gun', 'ay', 'yyl','tema_tm','tema_ru','tema_en','dusundiris_tm','dusundiris_ru','dusundiris_en','tazelik_tm','tazelik_ru','tazelik_en','photo'
    ];
}
