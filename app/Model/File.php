<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    protected $fillable = [
        'file_at_tm','file_at_ru','file_at_en','ugur_id','file'
    ];
}
