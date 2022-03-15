<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Yaryt;
use App\Http\Resources\YarysResource;

class YarysfrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $yaryss = Yaryt::latest()->get();
      return YarysResource::collection(
        $yaryss
      );
    }


}
