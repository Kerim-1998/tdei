<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Hyzmat;
use DB;
use Image;


class HyzmatController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $hyzmat = Hyzmat::all();
        return response()->json($hyzmat);
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
         'hyz_at_tm' => 'required',
         'hyz_at_ru' => 'required',
         'hyz_at_en' => 'required',
         'link' => 'required',
        ]);

        if ($request->photo) {
         $position = strpos($request->photo, ';');
         $sub = substr($request->photo, 0, $position);
         $ext = explode('/', $sub)[1];

         $name = time().".".$ext;
         $img = Image::make($request->photo);
         $upload_path = 'backend/hyzmat/';
         $image_url = $upload_path.$name;
         $img->save($image_url);

         $hyzmat = new Hyzmat;
         $hyzmat->hyz_at_tm = $request->hyz_at_tm;
         $hyzmat->hyz_at_ru = $request->hyz_at_ru;
         $hyzmat->hyz_at_en = $request->hyz_at_en;
         $hyzmat->link = $request->link;
         $hyzmat->photo = $image_url;
         $hyzmat->save();
     }else{
         $hyzmat = new Hyzmat;
         $hyzmat->hyz_at_tm = $request->hyz_at_tm;
         $hyzmat->hyz_at_ru = $request->hyz_at_ru;
         $hyzmat->hyz_at_en = $request->hyz_at_en;
         $hyzmat->link = $request->link;
         $hyzmat->save();

     }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $hyzmat = DB::table('hyzmats')->where('id',$id)->first();
       return response()->json($hyzmat);
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
        // $data = array();
        // $data['tema_tm'] = $request->tema_tm;
        // $data['tema_ru'] = $request->tema_ru;
        // $data['tema_en'] = $request->tema_en;
        // $data['dusundiris_tm'] = $request->dusundiris_tm;
        // $data['dusundiris_ru'] = $request->dusundiris_ru;
        // $data['dusundiris_en'] = $request->dusundiris_en;

        // $image = $request->newphoto;

        // if ($image) {
        //  $position = strpos($image, ';');
        //  $sub = substr($image, 0, $position);
        //  $ext = explode('/', $sub)[1];

        //  $name = time().".".$ext;
        //  $img = Image::make($image);
        //  $upload_path = 'backend/hyzmat/';
        //  $image_url = $upload_path.$name;
        //  $success = $img->save($image_url);

        //  if ($success) {
        //     $data['photo'] = $image_url;
        //     $img = DB::table('hyzmats')->where('id',$id)->first();
        //     $image_path = $img->photo;
        //     $done = unlink($image_path);
        //     $user  = DB::table('hyzmats')->where('id',$id)->update($data);
        //  }

        // }else{
        //     $oldphoto = $request->photo;
        //     $data['photo'] = $oldphoto;
        //     $user = DB::table('hyzmats')->where('id',$id)->update($data);
        // }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       $hyzmat = DB::table('hyzmats')->where('id',$id)->first();
       $photo = $hyzmat->photo;
       if ($photo) {
         unlink($photo);
         DB::table('hyzmats')->where('id',$id)->delete();
       }else{
        DB::table('hyzmats')->where('id',$id)->delete();
       }
    }
}
