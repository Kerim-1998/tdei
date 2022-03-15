<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UgurResource extends JsonResource
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
        'ugur_at_tm'=>$this->ugur_at_tm,
        'ugur_at_ru'=>$this->ugur_at_ru,
        'ugur_at_en'=>$this->ugur_at_en,
      ];
    }
}
