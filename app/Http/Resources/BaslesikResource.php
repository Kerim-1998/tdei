<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class BaslesikResource extends JsonResource
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
        'at_tm'=>$this->at_tm,
        'at_ru'=>$this->at_ru,
        'at_en'=>$this->at_en,
        'dusundiris_tm'=>$this->dusundiris_tm,
        'dusundiris_ru'=>$this->dusundiris_ru,
        'dusundiris_en'=>$this->dusundiris_en,
        'yyl_id'=>$this->yyl_id
      ];
    }
}
