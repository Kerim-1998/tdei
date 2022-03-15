<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class HyzmatResource extends JsonResource
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
        'hyz_at_tm'=>$this->hyz_at_tm,
        'hyz_at_ru'=>$this->hyz_at_ru,
        'hyz_at_en'=>$this->hyz_at_en,
        'link'=>$this->link,
        'photo'=>$this->photo,
      ];
    }
}
