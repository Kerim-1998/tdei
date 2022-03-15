<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class MustunResource extends JsonResource
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
        'patent_photo'=>$this->patent_photo,
        'patent_ady_tm'=>$this->patent_ady_tm,
        'patent_ady_ru'=>$this->patent_ady_ru,
        'patent_ady_en'=>$this->patent_ady_en,
        'mug_ady_tm'=>$this->mug_ady_tm,
        'mug_ady_ru'=>$this->mug_ady_ru,
        'mug_ady_en'=>$this->mug_ady_en,
        'hunar_tm'=>$this->hunar_tm,
        'hunar_ru'=>$this->hunar_ru,
        'hunar_en'=>$this->hunar_en,
        'dusundiris_tm'=>$this->dusundiris_tm,
        'dusundiris_ru'=>$this->dusundiris_ru,
        'dusundiris_en'=>$this->dusundiris_en,
        'patent_photo1'=>$this->patent_photo1,
      ];
    }
}
