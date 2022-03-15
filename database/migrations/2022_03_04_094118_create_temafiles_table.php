<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTemafilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('temafiles', function (Blueprint $table) {
            $table->id('id');
            $table->string('temafile_at_tm');
            $table->string('temafile_at_ru');
            $table->string('temafile_at_en');
            $table->string('tema_id');
            $table->string('temafile');
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
        Schema::dropIfExists('temafiles');
    }
}
