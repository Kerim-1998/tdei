<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Eders extends Model
{
    protected $fillable = [
        'ders_at_tm', 'ders_at_ru', 'ders_at_en','mug_at_tm', 'mug_at_ru', 'mug_at_en'
    ];
}
