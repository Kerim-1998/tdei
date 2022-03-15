<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Kafwebol extends Model
{
    protected $fillable = [
        'kaf_photo','kaf_at_tm','kaf_at_ru','kaf_at_en','gysga_text_tm','gysga_text_ru','gysga_text_en','dusundiris_tm','dusundiris_ru','dusundiris_en','bol_photo'
    ];
}
