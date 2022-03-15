<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\File;
use DB;
use Image;

class FileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $file = DB::table('files')
                    ->join('ugurs','files.ugur_id','ugurs.id')
                    ->select('ugurs.ugur_at_tm','files.*')
                    ->orderBy('files.id','DESC')
                    ->get();
                    return response()->json($file);
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
        $ext=$request->file->getClientOriginalExtension();
        $upload_path = 'backend/file/';
        $fileName = time().'.'.$ext;
        $file_url = $upload_path.$fileName;
        $request->file->move(public_path($upload_path), $fileName);
          

         $file = new File;
         $file->file_at_tm = $request->file_at_tm;
         $file->file_at_ru = $request->file_at_ru;
         $file->file_at_en = $request->file_at_en;
         $file->ugur_id = $request->ugur_id;
         $file->file = $file_url;
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
      $file = DB::table('files')->where('id',$id)->first();
       return response()->json($file);
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
       $files = DB::table('files')->where('id',$id)->first();
       $file = $files->file;
       if ($file) {
         unlink($file);
         DB::table('files')->where('id',$id)->delete();
       }else{
        DB::table('files')->where('id',$id)->delete();
       }
    }
}
