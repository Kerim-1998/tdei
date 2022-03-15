<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class FileResource extends JsonResource
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
        'file_at_tm'=>$this->file_at_tm,
        'file_at_ru'=>$this->file_at_ru,
        'file_at_en'=>$this->file_at_en,
        'ugur_id'=>$this->ugur_id,
        'file'=>$this->file,
      ];
    }
}
