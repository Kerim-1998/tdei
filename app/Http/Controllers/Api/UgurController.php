<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Ugur;
use DB;

class UgurController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ugur = Ugur::all();
        return response()->json($ugur);
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
         'ugur_at_tm' => 'required',
         'ugur_at_ru' => 'required',
         'ugur_at_en' => 'required',

        ]);

         $ugur = new Ugur;
         $ugur->ugur_at_tm = $request->ugur_at_tm;
         $ugur->ugur_at_ru = $request->ugur_at_ru;
         $ugur->ugur_at_en = $request->ugur_at_en;
         $ugur->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $ugur = DB::table('ugurs')->where('id',$id)->first();
       return response()->json($ugur);
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
        $data['ugur_at_tm'] = $request->ugur_at_tm;
        $data['ugur_at_ru'] = $request->ugur_at_ru;
        $data['ugur_at_en'] = $request->ugur_at_en;
        $user = DB::table('ugurs')->where('id',$id)->update($data);


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('ugurs')->where('id',$id)->delete();
    }
}
