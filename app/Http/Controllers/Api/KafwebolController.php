<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use App\Model\Kafwebol;
use Image;

class KafwebolController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $kafwebol = Kafwebol::all();
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
         'kaf_at_tm' => 'required',
         'kaf_at_ru' => 'required',
         'kaf_at_en' => 'required',

         'gysga_text_tm' => 'required',
         'gysga_text_ru' => 'required',
         'gysga_text_en' => 'required',

         'dusundiris_tm' => 'required',
         'dusundiris_ru' => 'required',
         'dusundiris_en' => 'required',

         'kaf_photo' => 'required',
         'bol_photo' => 'required',

        ]);

        if ($request->kaf_photo && $request->bol_photo) {

         $kaf_position = strpos($request->kaf_photo, ';');
         $kaf_sub = substr($request->kaf_photo, 0, $kaf_position);
         $kaf_ext = explode('/', $kaf_sub)[1];
         $kaf_name = time().".".$kaf_ext;
         $kaf_img = Image::make($request->kaf_photo);
         $kaf_upload_path = 'backend/kafwebol/';
         $kaf_image_url = $kaf_upload_path.$kaf_name;
         $kaf_img->save($kaf_image_url);

         $bol_position = strpos($request->bol_photo, ';');
         $bol_sub = substr($request->bol_photo, 0, $bol_position);
         $bol_ext = explode('/', $bol_sub)[1];
         $bol_name = time().".".$bol_ext;
         $bol_img = Image::make($request->bol_photo);
         $bol_upload_path = 'backend/bolum/';
         $bol_image_url = $bol_upload_path.$bol_name;
         $bol_img->save($bol_image_url);



         $kafwebol = new Kafwebol;
         $kafwebol->kaf_photo = $kaf_image_url;
         $kafwebol->kaf_at_tm = $request->kaf_at_tm;
         $kafwebol->kaf_at_ru = $request->kaf_at_ru;
         $kafwebol->kaf_at_en = $request->kaf_at_en;
         $kafwebol->gysga_text_tm = $request->gysga_text_tm;
         $kafwebol->gysga_text_ru = $request->gysga_text_ru;
         $kafwebol->gysga_text_en = $request->gysga_text_en;
         $kafwebol->dusundiris_tm = $request->dusundiris_tm;
         $kafwebol->dusundiris_ru = $request->dusundiris_ru;
         $kafwebol->dusundiris_en = $request->dusundiris_en;
         $kafwebol->bol_photo = $bol_image_url;
         $kafwebol->save();
     }else{
         $kafwebol = new Kafwebol;
         $kafwebol->kaf_at_tm = $request->kaf_at_tm;
         $kafwebol->kaf_at_ru = $request->kaf_at_ru;
         $kafwebol->kaf_at_en = $request->kaf_at_en;
         $kafwebol->gysga_text_tm = $request->gysga_text_tm;
         $kafwebol->gysga_text_ru = $request->gysga_text_ru;
         $kafwebol->gysga_text_en = $request->gysga_text_en;
         $kafwebol->dusundiris_tm = $request->dusundiris_tm;
         $kafwebol->dusundiris_ru = $request->dusundiris_ru;
         $kafwebol->dusundiris_en = $request->dusundiris_en;
         $kafwebol->save();

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
      $kafwebol = DB::table('kafwebols')->where('id',$id)->first();
       return response()->json($kafwebol);
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
        $data['kaf_at_tm'] = $request->kaf_at_tm;
        $data['kaf_at_ru'] = $request->kaf_at_ru;
        $data['kaf_at_en'] = $request->kaf_at_en;
        $data['gysga_text_tm'] = $request->gysga_text_tm;
        $data['gysga_text_ru'] = $request->gysga_text_ru;
        $data['gysga_text_en'] = $request->gysga_text_en;
        $data['dusundiris_tm'] = $request->dusundiris_tm;
        $data['dusundiris_ru'] = $request->dusundiris_ru;
        $data['dusundiris_en'] = $request->dusundiris_en;

        $kaf_image = $request->kaf_newphoto;
        $bol_image = $request->bol_newphoto;

        if ($kaf_image && $bol_image) {
         $kaf_position = strpos($kaf_image, ';');
         $kaf_sub = substr($kaf_image, 0, $kaf_position);
         $kaf_ext = explode('/', $kaf_sub)[1];

         $kaf_name = time().".".$kaf_ext;
         $kaf_img = Image::make($kaf_image);
         $kaf_upload_path = 'backend/kafwebol/';
         $kaf_image_url = $kaf_upload_path.$kaf_name;
         $kaf_success = $kaf_img->save($kaf_image_url);



         $bol_position = strpos($bol_image, ';');
         $bol_sub = substr($bol_image, 0, $bol_position);
         $bol_ext = explode('/', $bol_sub)[1];

         $bol_name = time().".".$bol_ext;
         $bol_img = Image::make($bol_image);
         $bol_upload_path = 'backend/bolum/';
         $bol_image_url = $bol_upload_path.$bol_name;
         $bol_success = $bol_img->save($bol_image_url);

         if ($kaf_success && $bol_success) {
            $data['kaf_photo'] = $kaf_image_url;
            $kaf_img = DB::table('kafwebols')->where('id',$id)->first();
            $kaf_image_path = $kaf_img->kaf_photo;
            $kaf_done = unlink($kaf_image_path);
            $kaf_user  = DB::table('kafwebols')->where('id',$id)->update($data);

            $data['bol_photo'] = $bol_image_url;
            $bol_img = DB::table('kafwebols')->where('id',$id)->first();
            $bol_image_path = $bol_img->bol_photo;
            $bol_done = unlink($bol_image_path);
            $bol_user  = DB::table('kafwebols')->where('id',$id)->update($data);
         }

        }else{
            $kaf_oldphoto = $request->kaf_photo;
            $data['kaf_photo'] = $kaf_oldphoto;
            $kaf_user = DB::table('kafwebols')->where('id',$id)->update($data);

            $bol_oldphoto = $request->bol_photo;
            $data['bol_photo'] = $bol_oldphoto;
            $bol_user = DB::table('kafwebols')->where('id',$id)->update($data);
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
       $kafwebol = DB::table('kafwebols')->where('id',$id)->first();
       $kaf_photo = $kafwebol->kaf_photo;
       $bol_photo = $kafwebol->bol_photo;
       if ($kaf_photo && $bol_photo) {
         unlink($kaf_photo);
         unlink($bol_photo);
         DB::table('kafwebols')->where('id',$id)->delete();
       }else{
        DB::table('kafwebols')->where('id',$id)->delete();
       }
    }
}