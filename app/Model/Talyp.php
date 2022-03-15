<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Talyp extends Model
{
    protected $fillable = [
        'photo', 'at_tm', 'at_ru', 'at_en', 'kurs_tm', 'kurs_ru', 'kurs_en', 'ders_tm', 'ders_ru', 'ders_en', 'yarys_id'
    ];
}
