<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Ustun extends Model
{
    protected $fillable = [
        'photo', 'talyp_at_tm', 'talyp_at_ru', 'talyp_at_en', 'ders_tm', 'ders_ru', 'ders_en', 'orun_tm', 'orun_ru', 'orun_en', 'olimp_id'
    ];
}
