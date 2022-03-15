<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class KafwebolResource extends JsonResource
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
        'kaf_photo'=>$this->kaf_photo,
        'kaf_at_tm'=>$this->kaf_at_tm,
        'kaf_at_ru'=>$this->kaf_at_ru,
        'kaf_at_en'=>$this->kaf_at_en,
        'gysga_text_tm'=>$this->gysga_text_tm,
        'gysga_text_ru'=>$this->gysga_text_ru,
        'gysga_text_en'=>$this->gysga_text_en,
        'dusundiris_tm'=>$this->dusundiris_tm,
        'dusundiris_ru'=>$this->dusundiris_ru,
        'dusundiris_en'=>$this->dusundiris_en,
        'bol_photo'=>$this->bol_photo,
      ];
    }
}
