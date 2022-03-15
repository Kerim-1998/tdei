<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Baslesik;
use DB;

class BaslesikController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $baslesik = DB::table('baslesiks')
                    ->join('yyls','baslesiks.yyl_id','yyls.id')
                    ->select('yyls.yyl','baslesiks.*')
                    ->orderBy('baslesiks.id','DESC')
                    ->get();
                    return response()->json($baslesik);
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
         'yyl_id' => 'required',
         'at_tm' => 'required',
         'at_ru' => 'required',
         'at_en' => 'required',
         'dusundiris_tm' => 'required',
         'dusundiris_ru' => 'required',
         'dusundiris_en' => 'required',
        ]);

         $baslesik = new Baslesik;
         $baslesik->at_tm = $request->at_tm;
         $baslesik->at_ru = $request->at_ru;
         $baslesik->at_en = $request->at_en;
         $baslesik->dusundiris_tm = $request->dusundiris_tm;
         $baslesik->dusundiris_ru = $request->dusundiris_ru;
         $baslesik->dusundiris_en = $request->dusundiris_en;
         $baslesik->yyl_id = $request->yyl_id;
         $baslesik->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $baslesik = DB::table('baslesiks')->where('id',$id)->first();
       return response()->json($baslesik);
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
        $data['at_tm'] = $request->at_tm;
        $data['at_ru'] = $request->at_ru;
        $data['at_en'] = $request->at_en;
        $data['dusundiris_tm'] = $request->dusundiris_tm;
        $data['dusundiris_ru'] = $request->dusundiris_ru;
        $data['dusundiris_en'] = $request->dusundiris_en;
        $data['yyl_id'] = $request->yyl_id;
        $user = DB::table('baslesiks')->where('id',$id)->update($data);


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('baslesiks')->where('id',$id)->delete();
    }
}
