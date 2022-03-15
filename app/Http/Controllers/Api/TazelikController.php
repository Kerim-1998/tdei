<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Tazelik;
use Image;
use DB;

class TazelikController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tazelik = Tazelik::all();
        return response()->json($tazelik);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
         'gun' => 'required|numeric',
         'ay' => 'required|numeric',
         'yyl' => 'required|numeric',
         'tema_tm' => 'required',
         'dusundiris_tm' => 'required',
         'tazelik_tm' => 'required',

         'tema_ru' => 'required',
         'dusundiris_ru' => 'required',
         'tazelik_ru' => 'required',

         'tema_en' => 'required',
         'dusundiris_en' => 'required',
         'tazelik_en' => 'required',

        ]);

        if ($request->photo) {
         $position = strpos($request->photo, ';');
         $sub = substr($request->photo, 0, $position);
         $ext = explode('/', $sub)[1];

         $name = time().".".$ext;
         $img = Image::make($request->photo);
         $upload_path = 'backend/tazelik/';
         $image_url = $upload_path.$name;
         $img->save($image_url);

         $tazelik = new Tazelik;
         $tazelik->gun = $request->gun;
         $tazelik->ay = $request->ay;
         $tazelik->yyl = $request->yyl;
         $tazelik->tema_tm = $request->tema_tm;
         $tazelik->tema_ru = $request->tema_ru;
         $tazelik->tema_en = $request->tema_en;
         $tazelik->dusundiris_tm = $request->dusundiris_tm;
         $tazelik->dusundiris_ru = $request->dusundiris_ru;
         $tazelik->dusundiris_en = $request->dusundiris_en;
         $tazelik->tazelik_tm = $request->tazelik_tm;
         $tazelik->tazelik_ru = $request->tazelik_ru;
         $tazelik->tazelik_en = $request->tazelik_en;
         $tazelik->photo = $image_url;
         $tazelik->save();
     }else{
         $tazelik = new Tazelik;
         $tazelik->gun = $request->gun;
         $tazelik->ay = $request->ay;
         $tazelik->yyl = $request->yyl;
         $tazelik->tema_tm = $request->tema_tm;
         $tazelik->tema_ru = $request->tema_ru;
         $tazelik->tema_en = $request->tema_en;
         $tazelik->dusundiris_tm = $request->dusundiris_tm;
         $tazelik->dusundiris_ru = $request->dusundiris_ru;
         $tazelik->dusundiris_en = $request->dusundiris_en;
         $tazelik->tazelik_tm = $request->tazelik_tm;
         $tazelik->tazelik_ru = $request->tazelik_ru;
         $tazelik->tazelik_en = $request->tazelik_en;
         $tazelik->save();

     }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $tazelik = DB::table('tazeliks')->where('id',$id)->first();
       return response()->json($tazelik);
    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = array();
        $data['gun'] = $request->gun;
        $data['ay'] = $request->ay;
        $data['yyl'] = $request->yyl;
        $data['tema_tm'] = $request->tema_tm;
        $data['tema_ru'] = $request->tema_ru;
        $data['tema_en'] = $request->tema_en;
        $data['dusundiris_tm'] = $request->dusundiris_tm;
        $data['dusundiris_ru'] = $request->dusundiris_ru;
        $data['dusundiris_en'] = $request->dusundiris_en;
        $data['tazelik_tm'] = $request->tazelik_tm;
        $data['tazelik_ru'] = $request->tazelik_ru;
        $data['tazelik_en'] = $request->tazelik_en;

        $image = $request->newphoto;

        if ($image) {
         $position = strpos($image, ';');
         $sub = substr($image, 0, $position);
         $ext = explode('/', $sub)[1];

         $name = time().".".$ext;
         $img = Image::make($image);
         $upload_path = 'backend/tazelik/';
         $image_url = $upload_path.$name;
         $success = $img->save($image_url);

         if ($success) {
            $data['photo'] = $image_url;
            $img = DB::table('tazeliks')->where('id',$id)->first();
            $image_path = $img->photo;
            $done = unlink($image_path);
            $user  = DB::table('tazeliks')->where('id',$id)->update($data);
         }

        }else{
            $oldphoto = $request->photo;
            $data['photo'] = $oldphoto;
            $user = DB::table('tazeliks')->where('id',$id)->update($data);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       $tazelik = DB::table('tazeliks')->where('id',$id)->first();
       $photo = $tazelik->photo;
       if ($photo) {
         unlink($photo);
         DB::table('tazeliks')->where('id',$id)->delete();
       }else{
        DB::table('tazeliks')->where('id',$id)->delete();
       }
    }
}
