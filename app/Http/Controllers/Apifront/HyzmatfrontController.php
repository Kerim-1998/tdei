<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Hyzmat;
use App\Http\Resources\HyzmatResource;

class HyzmatfrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hyzmats = Hyzmat::latest()->get();
      return HyzmatResource::collection(
        $hyzmats
      );
    }
}
