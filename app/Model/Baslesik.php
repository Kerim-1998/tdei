<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Baslesik extends Model
{
    protected $fillable = [
        'at_tm','at_ru','at_en','dusundiris_tm','dusundiris_ru','dusundiris_en', 'yyl_id'
    ];
}
