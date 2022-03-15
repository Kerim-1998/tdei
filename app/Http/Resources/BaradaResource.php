<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BaradaResource extends JsonResource
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
        'tema_tm'=>$this->tema_tm,
        'tema_ru'=>$this->tema_ru,
        'tema_en'=>$this->tema_en,
        'dusundiris_tm'=>$this->dusundiris_tm,
        'dusundiris_ru'=>$this->dusundiris_ru,
        'dusundiris_en'=>$this->dusundiris_en,
        'photo'=>$this->photo,
      ];
    }
}
