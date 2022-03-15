<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Model\Mugustun;
use Image;

class MugustunController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kafwebol = Mugustun::all();
        return response()->json($kafwebol);
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
         'patent_ady_tm' => 'required',
         'patent_ady_ru' => 'required',
         'patent_ady_en' => 'required',

         'mug_ady_tm' => 'required',
         'mug_ady_ru' => 'required',
         'mug_ady_en' => 'required',

         'hunar_tm' => 'required',
         'hunar_ru' => 'required',
         'hunar_en' => 'required',

        ]);

        if ($request->patent_photo && $request->patent_photo1) {

         $patent_position = strpos($request->patent_photo, ';');
         $patent_sub = substr($request->patent_photo, 0, $patent_position);
         $patent_ext = explode('/', $patent_sub)[1];
         $patent_name = time().".".$patent_ext;
         $patent_img = Image::make($request->patent_photo);
         $patent_upload_path = 'backend/patent/';
         $patent_image_url = $patent_upload_path.$patent_name;
         $patent_img->save($patent_image_url);

         $patent1_position = strpos($request->patent_photo1, ';');
         $patent1_sub = substr($request->patent_photo1, 0, $patent1_position);
         $patent1_ext = explode('/', $patent1_sub)[1];
         $patent1_name = time().".".$patent1_ext;
         $patent1_img = Image::make($request->patent_photo1);
         $patent1_upload_path = 'backend/patent1/';
         $patent1_image_url = $patent1_upload_path.$patent1_name;
         $patent1_img->save($patent1_image_url);



         $mustun = new Mugustun;
         $mustun->patent_photo = $patent_image_url;
         $mustun->patent_ady_tm = $request->patent_ady_tm;
         $mustun->patent_ady_ru = $request->patent_ady_ru;
         $mustun->patent_ady_en = $request->patent_ady_en;
         $mustun->mug_ady_tm = $request->mug_ady_tm;
         $mustun->mug_ady_ru = $request->mug_ady_ru;
         $mustun->mug_ady_en = $request->mug_ady_en;
         $mustun->hunar_tm = $request->hunar_tm;
         $mustun->hunar_ru = $request->hunar_ru;
         $mustun->hunar_en = $request->hunar_en;
         $mustun->dusundiris_tm = $request->dusundiris_tm;
         $mustun->dusundiris_ru = $request->dusundiris_ru;
         $mustun->dusundiris_en = $request->dusundiris_en;
         $mustun->patent_photo1 = $patent1_image_url;
         $mustun->save();
     }else{
         $mustun = new Mugustun;
         $mustun->patent_ady_tm = $request->patent_ady_tm;
         $mustun->patent_ady_ru = $request->patent_ady_ru;
         $mustun->patent_ady_en = $request->patent_ady_en;
         $mustun->mug_ady_tm = $request->mug_ady_tm;
         $mustun->mug_ady_ru = $request->mug_ady_ru;
         $mustun->mug_ady_en = $request->mug_ady_en;
         $mustun->hunar_tm = $request->hunar_tm;
         $mustun->hunar_ru = $request->hunar_ru;
         $mustun->hunar_en = $request->hunar_en;
         $mustun->dusundiris_tm = $request->dusundiris_tm;
         $mustun->dusundiris_ru = $request->dusundiris_ru;
         $mustun->dusundiris_en = $request->dusundiris_en;
         $mustun->save();

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
      $mustun = DB::table('mugustuns')->where('id',$id)->first();
       return response()->json($mugustuns);
    }



    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       $mustun = DB::table('mugustuns')->where('id',$id)->first();
       $patent_photo = $mustun->patent_photo;
       $patent_photo1 = $mustun->patent_photo1;
       if ($patent_photo && $patent_photo1) {
         unlink($patent_photo);
         unlink($patent_photo1);
         DB::table('mugustuns')->where('id',$id)->delete();
       }else{
        DB::table('mugustuns')->where('id',$id)->delete();
       }
    }
}