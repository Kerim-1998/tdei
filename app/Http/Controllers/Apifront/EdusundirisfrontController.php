<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Edusundiris;
use App\Http\Resources\EdusundirisResource;


class EdusundirisfrontController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
          return new EdusundirisResource(Edusundiris::all()->random(1)->first());
    }

}
