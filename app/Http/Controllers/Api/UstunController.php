<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Ustun;
use DB;
use Image;

class UstunController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ustun = DB::table('ustuns')
                    ->join('olimps','ustuns.olimp_id','olimps.id')
                    ->select('olimps.olimp_at_tm','ustuns.*')
                    ->orderBy('ustuns.id','DESC')
                    ->get();
                    return response()->json($ustun);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    
    public function store(Request $request)
    {
        if ($request->photo) {
         $position = strpos($request->photo, ';');
         $sub = substr($request->photo, 0, $position);
         $ext = explode('/', $sub)[1];

         $name = time().".".$ext;
         $img = Image::make($request->photo);
         $upload_path = 'backend/ustun/';
         $image_url = $upload_path.$name;
         $img->save($image_url);

         $ustun = new Ustun;
         $ustun->talyp_at_tm = $request->talyp_at_tm;
         $ustun->talyp_at_ru = $request->talyp_at_ru;
         $ustun->talyp_at_en = $request->talyp_at_en;
         $ustun->ders_tm = $request->ders_tm;
         $ustun->ders_ru = $request->ders_ru;
         $ustun->ders_en = $request->ders_en;
         $ustun->orun_tm = $request->orun_tm;
         $ustun->orun_ru = $request->orun_ru;
         $ustun->orun_en = $request->orun_en;
         $ustun->olimp_id = $request->olimp_id;
         $ustun->photo = $image_url;
         $ustun->save();
     }else{
         $ustun = new Ustun;
         $ustun->talyp_at_tm = $request->talyp_at_tm;
         $ustun->talyp_at_ru = $request->talyp_at_ru;
         $ustun->talyp_at_en = $request->talyp_at_en;
         $ustun->ders_tm = $request->ders_tm;
         $ustun->ders_ru = $request->ders_ru;
         $ustun->ders_en = $request->ders_en;
         $ustun->orun_tm = $request->orun_tm;
         $ustun->orun_ru = $request->orun_ru;
         $ustun->orun_en = $request->orun_en;
         $ustun->olimp_id = $request->olimp_id;
         $ustun->save();

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
      $ustun = DB::table('ustuns')->where('id',$id)->first();
       return response()->json($ustun);
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
       $ustuns = DB::table('ustuns')->where('id',$id)->first();
       $photo = $ustuns->photo;
       if ($photo) {
         unlink($photo);
         DB::table('ustuns')->where('id',$id)->delete();
       }else{
        DB::table('ustuns')->where('id',$id)->delete();
       }
    }
}
