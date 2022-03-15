<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Eders;
use App\Http\Resources\EdersResource;

class DersfrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ederss = Eders::latest()->get();
      return EdersResource::collection(
        $ederss
      );
    }


}
