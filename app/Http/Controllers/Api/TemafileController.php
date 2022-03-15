<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Temafile;
use DB;

class TemafileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $temafile = DB::table('temafiles')
                    ->join('temas','temafiles.tema_id','temas.id')
                    ->select('temas.tema_tm','temafiles.*')
                    ->orderBy('temafiles.id','DESC')
                    ->get();
                    return response()->json($temafile);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    
    public function store(Request $request)
    {
        // dd($request->ugur_id);
        $ext=$request->temafile->getClientOriginalExtension();
        $upload_path = 'backend/temafile/';
        $fileName = time().'.'.$ext;
        $file_url = $upload_path.$fileName;
        $request->temafile->move(public_path($upload_path), $fileName);
          

         $file = new Temafile;
         $file->temafile_at_tm = $request->temafile_at_tm;
         $file->temafile_at_ru = $request->temafile_at_ru;
         $file->temafile_at_en = $request->temafile_at_en;
         $file->tema_id = $request->tema_id;
         $file->temafile = $file_url;
         $file->save();

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $temafile = DB::table('temafiles')->where('id',$id)->first();
       return response()->json($temafile);
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
       $temafiles = DB::table('temafiles')->where('id',$id)->first();
       $temafile = $temafiles->temafile;
       if ($temafile) {
         unlink($temafile);
         DB::table('temafiles')->where('id',$id)->delete();
       }else{
        DB::table('temafiles')->where('id',$id)->delete();
       }
    }
}
