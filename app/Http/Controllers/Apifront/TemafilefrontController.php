<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Temafile;
use App\Http\Resources\TemafileResource;

class TemafilefrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $temafiles = Temafile::latest()->get();
      return TemafileResource::collection(
        $temafiles
      );
    }


}
