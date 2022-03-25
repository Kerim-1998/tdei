<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\dalasgar;
use App\Http\Resources\DalasgarResource;


class DalasgarfrontController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
          return new DalasgarResource(dalasgar::all()->random(1)->first());
    }

}
