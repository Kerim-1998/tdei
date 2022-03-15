<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;
use App\Model\Carousel;
use Image;
use DB;

class CarouselController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $carousel = Carousel::all();
       return response()->json($carousel);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $contents = Storage::get('user');


        $validateData = $request->validate([
         'h1texttm' => 'required',
         'h1textru' => 'required',
         'h1texten' => 'required',
         'spantexttm' => 'required',
         'spantextru' => 'required',
         'spantexten' => 'required',
         'photocarousel' => 'required'

        ]);

      if ($request->photocarousel) {
         $position = strpos($request->photocarousel, ';');
         $sub = substr($request->photocarousel, 0, $position);
         $ext = explode('/', $sub)[1];

         $name = time().".".$ext;
         $img = Image::make($request->photocarousel);
         $upload_path = 'backend/carousel/';
         $image_url = $upload_path.$name;
         $img->save($image_url);

         $carousel = new Carousel;
         $carousel->h1texttm = $request->h1texttm;
         $carousel->h1textru = $request->h1textru;
         $carousel->h1texten = $request->h1texten;
         $carousel->spantexttm = $request->spantexttm;
         $carousel->spantextru = $request->spantextru;
         $carousel->spantexten = $request->spantexten;
         $carousel->nid = $request->nid;
         $carousel->photo = $image_url;
         $carousel->save();
     }else{
        $carousel = new Carousel;
        $carousel->h1texttm = $request->h1texttm;
        $carousel->h1textru = $request->h1textru;
        $carousel->h1texten = $request->h1texten;
        $carousel->spantexttm = $request->spantexttm;
        $carousel->spantextru = $request->spantextru;
        $carousel->spantexten = $request->spantexten;
        $carousel->nid = $request->nid;
        $carousel->save();

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
       $carousel = DB::table('carousels')->where('id',$id)->first();
       return response()->json($carousel);
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
        $data['h1texttm'] = $request->h1texttm;
        $data['h1textru'] = $request->h1textru;
        $data['h1texten'] = $request->h1texten;
        $data['spantexttm'] = $request->spantexttm;
        $data['spantextru'] = $request->spantextru;
        $data['spantexten'] = $request->spantexten;
        $data['nid'] = $request->nid;
        $image = $request->newphoto;

        if ($image) {
         $position = strpos($image, ';');
         $sub = substr($image, 0, $position);
         $ext = explode('/', $sub)[1];

         $name = time().".".$ext;
         $img = Image::make($image);
         $upload_path = 'backend/carousel/';
         $image_url = $upload_path.$name;
         $success = $img->save($image_url);

         if ($success) {
            $data['photo'] = $image_url;
            $img = DB::table('carousels')->where('id',$id)->first();
            $image_path = $img->photo;
            $done = unlink($image_path);
            $user  = DB::table('carousels')->where('id',$id)->update($data);
         }

        }else{
            $oldphoto = $request->photo;
            $data['photo'] = $oldphoto;
            $user = DB::table('carousels')->where('id',$id)->update($data);
        }

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
       $carousel = DB::table('carousels')->where('id',$id)->first();
       $photo = $carousel->photocarousel;
       if ($photo) {
         unlink($photo);
         DB::table('carousels')->where('id',$id)->delete();
       }else{
        DB::table('carousel')->where('id',$id)->delete();
       }
    }


}
