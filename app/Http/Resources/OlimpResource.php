<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class OlimpResource extends JsonResource
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
        'olimp_at_tm'=>$this->olimp_at_tm,
        'olimp_at_ru'=>$this->olimp_at_ru,
        'olimp_at_en'=>$this->olimp_at_en,
      ];
    }
}
