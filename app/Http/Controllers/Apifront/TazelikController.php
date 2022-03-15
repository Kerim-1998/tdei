<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Tazelik;
use App\Http\Resources\TazelikResource;

class TazelikController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request)
    {
        $tazeliks = Tazelik::latest()->get();
      return TazelikResource::collection(
        $tazeliks
      );
    }
}
