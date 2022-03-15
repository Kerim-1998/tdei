<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Yaryt extends Model
{
    protected $fillable = [
        'yarys_at_tm', 'yarys_at_ru', 'yarys_at_en'
    ];
}
