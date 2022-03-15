<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Hyzmat extends Model
{
    protected $fillable = [
        'hyz_at_tm','hyz_at_ru','hyz_at_en','link','photo'
    ];
}
