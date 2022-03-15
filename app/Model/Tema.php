<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Tema extends Model
{
    protected $fillable = [
        'tema_tm', 'tema_ru', 'tema_en', 'ders_id'
    ];
}
