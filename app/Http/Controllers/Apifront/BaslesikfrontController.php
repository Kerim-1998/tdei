<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Baslesik;
use App\Http\Resources\BaslesikResource;

class BaslesikfrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
         $baslesiks = Baslesik::latest()->get();
          return BaslesikResource::collection(
            $baslesiks
          );
    }

    public function show($id)
    {
      return new BaslesikResource(Baslesik::where('id', $id)->first());
    }
}
