<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Habar extends Model
{
    protected $fillable = [
        'at','email','tema','phone','message'
    ];
}
