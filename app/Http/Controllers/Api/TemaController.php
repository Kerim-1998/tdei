<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Tema;
use DB;

class TemaController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tema = DB::table('temas')
                    ->join('eders','temas.ders_id','eders.id')
                    ->select('eders.ders_at_tm','temas.*')
                    ->orderBy('temas.id','DESC')
                    ->get();
                    return response()->json($tema);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    
    public function store(Request $request)
    {
         $tema = new Tema;
         $tema->tema_tm = $request->tema_tm;
         $tema->tema_ru = $request->tema_ru;
         $tema->tema_en = $request->tema_en;
         $tema->ders_id = $request->ders_id;
         $tema->save();
       
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $tema = DB::table('temas')->where('id',$id)->first();
       return response()->json($tema);
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
        DB::table('temas')->where('id',$id)->delete();
    }
}
