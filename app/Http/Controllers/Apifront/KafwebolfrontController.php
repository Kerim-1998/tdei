<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Kafwebol;
use App\Http\Resources\KafwebolResource;

class KafwebolfrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kafwebols = Kafwebol::latest()->get();
      return KafwebolResource::collection(
        $kafwebols
      );
    }

    public function show($id)
    {
      return new KafwebolResource(Kafwebol::where('id', $id)->first());
    }

}
