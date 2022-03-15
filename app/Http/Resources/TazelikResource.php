<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TazelikResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
      return [
        'id'=>$this->id,
        'gun'=>$this->gun,
        'ay'=>$this->ay,
        'yyl'=>$this->yyl,
        'tema_tm'=>$this->tema_tm,
        'tema_ru'=>$this->tema_ru,
        'tema_en'=>$this->tema_en,
        'dusundiris_tm'=>$this->dusundiris_tm,
        'dusundiris_ru'=>$this->dusundiris_ru,
        'dusundiris_en'=>$this->dusundiris_en,
        'tazelik_tm'=>$this->tazelik_tm,
        'tazelik_ru'=>$this->tazelik_ru,
        'tazelik_en'=>$this->tazelik_en,
        'photo'=>$this->photo,
      ];
      
    }
}
