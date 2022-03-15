<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Olimp;
use DB;

class OlimpController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $olimp = Olimp::all();
        return response()->json($olimp);
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
         'olimp_at_tm' => 'required',
         'olimp_at_ru' => 'required',
         'olimp_at_en' => 'required',

        ]);

         $olimp = new Olimp;
         $olimp->olimp_at_tm = $request->olimp_at_tm;
         $olimp->olimp_at_ru = $request->olimp_at_ru;
         $olimp->olimp_at_en = $request->olimp_at_en;
         $olimp->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $olimp = DB::table('olimps')->where('id',$id)->first();
       return response()->json($olimp);
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
        $data['olimp_at_tm'] = $request->olimp_at_tm;
        $data['olimp_at_ru'] = $request->olimp_at_ru;
        $data['olimp_at_en'] = $request->olimp_at_en;
        $user = DB::table('olimps')->where('id',$id)->update($data);


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('olimps')->where('id',$id)->delete();
    }
}
