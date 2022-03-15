<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class EdersResource extends JsonResource
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
        'ders_at_tm'=>$this->ders_at_tm,
        'ders_at_ru'=>$this->ders_at_ru,
        'ders_at_en'=>$this->ders_at_en,
        'mug_at_tm'=>$this->mug_at_tm,
        'mug_at_ru'=>$this->mug_at_ru,
        'mug_at_en'=>$this->mug_at_en,
      ];
    }
}
