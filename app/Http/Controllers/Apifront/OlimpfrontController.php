<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Olimp;
use App\Http\Resources\OlimpResource;

class OlimpfrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $olimps = Olimp::latest()->get();
      return OlimpResource::collection(
        $olimps
      );
    }


}
