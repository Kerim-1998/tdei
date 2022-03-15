<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Edusundiris;
use DB;

class EdusundirisController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $edusundiris = Edusundiris::all();
        return response()->json($edusundiris);
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
         'dusundiris_tm' => 'required',
         'dusundiris_ru' => 'required',
         'dusundiris_en' => 'required',

        ]);

         $edusundiris = new Edusundiris;
         $edusundiris->dusundiris_tm = $request->dusundiris_tm;
         $edusundiris->dusundiris_ru = $request->dusundiris_ru;
         $edusundiris->dusundiris_en = $request->dusundiris_en;
         $edusundiris->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $edusundiris = DB::table('edusundiris')->where('id',$id)->first();
       return response()->json($edusundiris);
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
        $data['dusundiris_tm'] = $request->dusundiris_tm;
        $data['dusundiris_ru'] = $request->dusundiris_ru;
        $data['dusundiris_en'] = $request->dusundiris_en;
        $user = DB::table('edusundiris')->where('id',$id)->update($data);


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('edusundiris')->where('id',$id)->delete();
    }
}
