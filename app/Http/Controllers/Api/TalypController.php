<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Talyp;
use DB;
use Image;

class TalypController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $talyp = DB::table('talyps')
                    ->join('yaryts','talyps.yarys_id','yaryts.id')
                    ->select('yaryts.yarys_at_tm','talyps.*')
                    ->orderBy('talyps.id','DESC')
                    ->get();
                    return response()->json($talyp);
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
         $upload_path = 'backend/talyp/';
         $image_url = $upload_path.$name;
         $img->save($image_url);

         $talyp = new Talyp;
         $talyp->at_tm = $request->at_tm;
         $talyp->at_ru = $request->at_ru;
         $talyp->at_en = $request->at_en;
         $talyp->kurs_tm = $request->kurs_tm;
         $talyp->kurs_ru = $request->kurs_ru;
         $talyp->kurs_en = $request->kurs_en;
         $talyp->ders_tm = $request->ders_tm;
         $talyp->ders_ru = $request->ders_ru;
         $talyp->ders_en = $request->ders_en;
         $talyp->yarys_id = $request->yarys_id;
         $talyp->photo = $image_url;
         $talyp->save();
     }else{
         $talyp = new Talyp;
         $talyp->at_tm = $request->at_tm;
         $talyp->at_ru = $request->at_ru;
         $talyp->at_en = $request->at_en;
         $talyp->kurs_tm = $request->kurs_tm;
         $talyp->kurs_ru = $request->kurs_ru;
         $talyp->kurs_en = $request->kurs_en;
         $talyp->ders_tm = $request->ders_tm;
         $talyp->ders_ru = $request->ders_ru;
         $talyp->ders_en = $request->ders_en;
         $talyp->yarys_id = $request->yarys_id;
         $talyp->save();

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
      $talyp = DB::table('talyps')->where('id',$id)->first();
       return response()->json($talyp);
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
       $talyps = DB::table('talyps')->where('id',$id)->first();
       $photo = $talyps->photo;
       if ($photo) {
         unlink($photo);
         DB::table('talyps')->where('id',$id)->delete();
       }else{
        DB::table('talyps')->where('id',$id)->delete();
       }
    }
}
