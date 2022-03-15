<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTalypsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('talyps', function (Blueprint $table) {
            $table->id('id');
            $table->string('photo');
            $table->string('at_tm');
            $table->string('at_ru');
            $table->string('at_en');
            $table->string('kurs_tm');
            $table->string('kurs_ru');
            $table->string('kurs_en');
            $table->string('ders_tm');
            $table->string('ders_ru');
            $table->string('ders_en');
            $table->string('yarys_id');
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
        Schema::dropIfExists('talyps');
    }
}
