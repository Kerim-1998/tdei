<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Tazelik;
use App\Http\Resources\TazelikResource;

class TazelikfrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tazeliks = Tazelik::latest()->get();
      return TazelikResource::collection(
        $tazeliks
      );
    }

    public function show($id)
    {
      return new TazelikResource(Tazelik::where('id', $id)->first());
    }

}
