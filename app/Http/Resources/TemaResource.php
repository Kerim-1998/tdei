<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TemaResource extends JsonResource
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
        'ders_id'=>$this->ders_id,
      ];
    }
}
