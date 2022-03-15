<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class UstunResource extends JsonResource
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
        'talyp_at_tm'=>$this->talyp_at_tm,
        'talyp_at_ru'=>$this->talyp_at_ru,
        'talyp_at_en'=>$this->talyp_at_en,
        'ders_tm'=>$this->ders_tm,
        'ders_ru'=>$this->ders_ru,
        'ders_en'=>$this->ders_en,
        'orun_tm'=>$this->orun_tm,
        'orun_ru'=>$this->orun_ru,
        'orun_en'=>$this->orun_en,
        'olimp_id'=>$this->olimp_id,
      ];
    }
}
