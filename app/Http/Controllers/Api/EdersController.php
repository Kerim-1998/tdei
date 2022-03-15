<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Eders;
use DB;

class EdersController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $eders = Eders::all();
        return response()->json($eders);
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
         'ders_at_tm' => 'required',
         'ders_at_ru' => 'required',
         'ders_at_en' => 'required',
         'mug_at_tm' => 'required',
         'mug_at_ru' => 'required',
         'mug_at_en' => 'required',

        ]);

         $eders = new Eders;
         $eders->ders_at_tm = $request->ders_at_tm;
         $eders->ders_at_ru = $request->ders_at_ru;
         $eders->ders_at_en = $request->ders_at_en;
         $eders->mug_at_tm = $request->mug_at_tm;
         $eders->mug_at_ru = $request->mug_at_ru;
         $eders->mug_at_en = $request->mug_at_en;
         $eders->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $eders = DB::table('eders')->where('id',$id)->first();
       return response()->json($eders);
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
        $data['ders_at_tm'] = $request->ders_at_tm;
        $data['ders_at_ru'] = $request->ders_at_ru;
        $data['ders_at_en'] = $request->ders_at_en;
        $data['mug_at_tm'] = $request->mug_at_tm;
        $data['mug_at_ru'] = $request->mug_at_ru;
        $data['mug_at_en'] = $request->mug_at_en;
        $user = DB::table('eders')->where('id',$id)->update($data);


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('eders')->where('id',$id)->delete();
    }
}
