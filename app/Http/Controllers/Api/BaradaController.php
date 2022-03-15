<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Barada;
use DB;
use Image;


class BaradaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $barada = Barada::all();
        return response()->json($barada);
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
         'tema_tm' => 'required',
         'dusundiris_tm' => 'required',

         'tema_ru' => 'required',
         'dusundiris_ru' => 'required',

         'tema_en' => 'required',
         'dusundiris_en' => 'required',

        ]);

        if ($request->photo) {
         $position = strpos($request->photo, ';');
         $sub = substr($request->photo, 0, $position);
         $ext = explode('/', $sub)[1];

         $name = time().".".$ext;
         $img = Image::make($request->photo);
         $upload_path = 'backend/barada/';
         $image_url = $upload_path.$name;
         $img->save($image_url);

         $barada = new Barada;
         $barada->tema_tm = $request->tema_tm;
         $barada->tema_ru = $request->tema_ru;
         $barada->tema_en = $request->tema_en;
         $barada->dusundiris_tm = $request->dusundiris_tm;
         $barada->dusundiris_ru = $request->dusundiris_ru;
         $barada->dusundiris_en = $request->dusundiris_en;
         $barada->photo = $image_url;
         $barada->save();
     }else{
         $barada = new Barada;
         $barada->tema_tm = $request->tema_tm;
         $barada->tema_ru = $request->tema_ru;
         $barada->tema_en = $request->tema_en;
         $barada->dusundiris_tm = $request->dusundiris_tm;
         $barada->dusundiris_ru = $request->dusundiris_ru;
         $barada->dusundiris_en = $request->dusundiris_en;
         $barada->save();

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
      $barada = DB::table('baradas')->where('id',$id)->first();
       return response()->json($barada);
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
        $data['tema_tm'] = $request->tema_tm;
        $data['tema_ru'] = $request->tema_ru;
        $data['tema_en'] = $request->tema_en;
        $data['dusundiris_tm'] = $request->dusundiris_tm;
        $data['dusundiris_ru'] = $request->dusundiris_ru;
        $data['dusundiris_en'] = $request->dusundiris_en;

        $image = $request->newphoto;

        if ($image) {
         $position = strpos($image, ';');
         $sub = substr($image, 0, $position);
         $ext = explode('/', $sub)[1];

         $name = time().".".$ext;
         $img = Image::make($image);
         $upload_path = 'backend/barada/';
         $image_url = $upload_path.$name;
         $success = $img->save($image_url);

         if ($success) {
            $data['photo'] = $image_url;
            $img = DB::table('baradas')->where('id',$id)->first();
            $image_path = $img->photo;
            $done = unlink($image_path);
            $user  = DB::table('baradas')->where('id',$id)->update($data);
         }

        }else{
            $oldphoto = $request->photo;
            $data['photo'] = $oldphoto;
            $user = DB::table('baradas')->where('id',$id)->update($data);
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
       $barada = DB::table('baradas')->where('id',$id)->first();
       $photo = $barada->photo;
       if ($photo) {
         unlink($photo);
         DB::table('baradas')->where('id',$id)->delete();
       }else{
        DB::table('baradas')->where('id',$id)->delete();
       }
    }
}
