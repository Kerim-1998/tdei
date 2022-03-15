<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Yaryt;
use DB;

class YarysController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $yarys = Yaryt::all();
        return response()->json($yarys);
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
         'yarys_at_tm' => 'required',
         'yarys_at_ru' => 'required',
         'yarys_at_en' => 'required',

        ]);

         $yarys = new Yaryt;
         $yarys->yarys_at_tm = $request->yarys_at_tm;
         $yarys->yarys_at_ru = $request->yarys_at_ru;
         $yarys->yarys_at_en = $request->yarys_at_en;
         $yarys->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $yarys = DB::table('yaryts')->where('id',$id)->first();
       return response()->json($yarys);
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
        DB::table('yaryts')->where('id',$id)->delete();
    }
}
