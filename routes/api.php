<?php


Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {

    Route::post('login', 'AuthController@login');
    Route::post('signup', 'AuthController@signup');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');

});

Route::apiResource('/carousel', 'Api\CarouselController');
Route::apiResource('/tazelik', 'Api\TazelikController');
Route::apiResource('/barada', 'Api\BaradaController');
Route::apiResource('/kafwebol', 'Api\KafwebolController');
Route::apiResource('/kafmug', 'Api\KafmugController');
Route::apiResource('/ugur', 'Api\UgurController');
Route::apiResource('/file', 'Api\FileController');
Route::apiResource('/hyzmat', 'Api\HyzmatController');
Route::apiResource('/mustun', 'Api\MugustunController');
Route::apiResource('/olimp', 'Api\OlimpController');
Route::apiResource('/ustun', 'Api\UstunController');
Route::apiResource('/yarys', 'Api\YarysController');
Route::apiResource('/talyp', 'Api\TalypController');
Route::apiResource('/baslesik', 'Api\BaslesikController');
Route::apiResource('/yyl', 'Api\YylController');
Route::apiResource('/edusundiris', 'Api\EdusundirisController');
Route::apiResource('/eders', 'Api\EdersController');
Route::apiResource('/tema', 'Api\TemaController');
Route::apiResource('/temafile', 'Api\TemafileController');





Route::apiResource('/habar', 'Api\HabarController');

//Front
Route::apiResource('/tazelikfront', 'Apifront\TazelikfrontController')->only(['index', 'show']);
Route::apiResource('/baradafront', 'Apifront\BaradafrontController')->only(['index']);
Route::apiResource('/kafwebolfront', 'Apifront\KafwebolfrontController')->only(['index', 'show']);
Route::apiResource('/ugurfront', 'Apifront\UgurfrontController')->only(['index']);
Route::apiResource('/filefront', 'Apifront\FilefrontController')->only(['index']);
Route::apiResource('/hyzmatfront', 'Apifront\HyzmatfrontController')->only(['index']);
Route::apiResource('/mustunfront', 'Apifront\MustunfrontController')->only(['index', 'show']);
Route::apiResource('/olimpfront', 'Apifront\OlimpfrontController')->only(['index']);
Route::apiResource('/yenijifront', 'Apifront\YenijifrontController')->only(['index']);
Route::apiResource('/yarysfront', 'Apifront\YarysfrontController')->only(['index']);
Route::apiResource('/talypfront', 'Apifront\TalypfrontController')->only(['index']);
Route::apiResource('/yylfront', 'Apifront\YylfrontController')->only(['index']);
Route::apiResource('/baslesikfront', 'Apifront\BaslesikfrontController')->only(['index', 'show']);
Route::apiResource('/edusundirisfront', 'Apifront\EdusundirisfrontController')->only(['index']);
Route::apiResource('/dersfront', 'Apifront\DersfrontController')->only(['index']);
Route::apiResource('/temafront', 'Apifront\TemafrontController')->only(['index']);
Route::apiResource('/temafilefront', 'Apifront\TemafilefrontController')->only(['index']);



