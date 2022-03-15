<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class YarysResource extends JsonResource
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
        'yarys_at_tm'=>$this->yarys_at_tm,
        'yarys_at_ru'=>$this->yarys_at_ru,
        'yarys_at_en'=>$this->yarys_at_en,
      ];
    }
}
