<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Talyp;
use App\Http\Resources\TalypResource;

class TalypfrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $talyps = Talyp::latest()->get();
      return TalypResource::collection(
        $talyps
      );
    }


}
