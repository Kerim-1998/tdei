<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Yyl;
use App\Http\Resources\YylResource;

class YylfrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $yyls = Yyl::latest()->get();
      return YylResource::collection(
        $yyls
      );
    }


}
