<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUstunsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ustuns', function (Blueprint $table) {
            $table->id('id');
            $table->string('photo');
            $table->string('talyp_at_tm');
            $table->string('talyp_at_ru');
            $table->string('talyp_at_en');
            $table->string('ders_tm');
            $table->string('ders_ru');
            $table->string('ders_en');
            $table->string('orun_tm');
            $table->string('orun_ru');
            $table->string('orun_en');
            $table->string('olimp_id');
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
        Schema::dropIfExists('ustuns');
    }
}
