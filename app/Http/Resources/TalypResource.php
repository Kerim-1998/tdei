<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TalypResource extends JsonResource
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
        'photo'=>$this->photo,
        'at_tm'=>$this->at_tm,
        'at_ru'=>$this->at_ru,
        'at_en'=>$this->at_en,
        'kurs_tm'=>$this->kurs_tm,
        'kurs_ru'=>$this->kurs_ru,
        'kurs_en'=>$this->kurs_en,
        'ders_tm'=>$this->ders_tm,
        'ders_ru'=>$this->ders_ru,
        'ders_en'=>$this->ders_en,
        'yarys_id'=>$this->yarys_id,
      ];
    }
}
