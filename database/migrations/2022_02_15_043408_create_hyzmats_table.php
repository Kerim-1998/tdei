<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHyzmatsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('hyzmats', function (Blueprint $table) {
            $table->id('id');
            $table->string('hyz_at_tm');
            $table->string('hyz_at_ru');
            $table->string('hyz_at_en');
            $table->longText('link');
            $table->string('photo');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('hyzmats');
    }
}
