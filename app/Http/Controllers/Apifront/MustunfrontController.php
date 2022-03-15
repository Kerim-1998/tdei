<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Mugustun;
use App\Http\Resources\MustunResource;

class MustunfrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $mustuns = Mugustun::latest()->get();
      return MustunResource::collection(
        $mustuns
      );
    }

    public function show($id)
    {
      return new MustunResource(Mugustun::where('id', $id)->first());
    }

}
