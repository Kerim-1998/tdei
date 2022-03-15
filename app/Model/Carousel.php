<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Carousel extends Model
{
     protected $fillable = [
        'h1texttm', 'h1textru', 'h1texten','spantexttm','spantextru','spantexten','nid','photocarousel'
    ];
}
