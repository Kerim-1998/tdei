<?php

namespace App\Http\Controllers\Apifront;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\File;
use App\Http\Resources\FileResource;

class FilefrontController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $files = File::latest()->get();
      return FileResource::collection(
        $files
      );
    }
}
