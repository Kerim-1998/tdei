<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Temafile extends Model
{
    protected $fillable = [
        'temafile_at_tm','temafile_at_ru','temafile_at_en','tema_id','temafile'
    ];
}
