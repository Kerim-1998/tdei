<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Ustun;
use App\Http\Resources\UstunResource;

class YenijifrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ustuns = Ustun::latest()->get();
      return UstunResource::collection(
        $ustuns
      );
    }


}
