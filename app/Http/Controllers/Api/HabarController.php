<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Habar;
use DB;

class HabarController extends Controller
{
        /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $habar = Habar::all();
        return response()->json($habar);
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
         'at' => 'required',
         'email' => 'required',
         'tema' => 'required',
         'phone' => 'required',
         'message' => 'required'

        ]);

         $habar = new Habar;
         $habar->at = $request->at;
         $habar->email = $request->email;
         $habar->tema = $request->tema;
         $habar->phone = $request->phone;
         $habar->message = $request->message;
         $habar->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $habar = DB::table('habars')->where('id',$id)->first();
       return response()->json($habar);
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('habars')->where('id',$id)->delete();
    }
}
