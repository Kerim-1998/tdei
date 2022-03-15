<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Barada;
use App\Http\Resources\BaradaResource;


class BaradafrontController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      //   $barada = Barada::all()->random(1);
      //     return BaradaResource::collection(
      //   $barada
      // );
        // $barada = Barada::all()->random(1);
          return new BaradaResource(Barada::all()->random(1)->first());
    }




}
