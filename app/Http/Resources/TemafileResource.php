<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class TemafileResource extends JsonResource
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
        'temafile_at_tm'=>$this->temafile_at_tm,
        'temafile_at_ru'=>$this->temafile_at_ru,
        'temafile_at_en'=>$this->temafile_at_en,
        'tema_id'=>$this->tema_id,
        'temafile'=>$this->temafile,
      ];
    }
}
