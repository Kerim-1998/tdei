<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Ugur;
use App\Http\Resources\UgurResource;

class UgurfrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ugurs = Ugur::latest()->get();
      return UgurResource::collection(
        $ugurs
      );
    }


}
