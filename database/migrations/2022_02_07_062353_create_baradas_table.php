<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBaradasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('baradas', function (Blueprint $table) {
            $table->id('id');
            $table->string('tema_tm');
            $table->string('tema_ru');
            $table->string('tema_en');
            $table->longText('dusundiris_tm');
            $table->longText('dusundiris_ru');
            $table->longText('dusundiris_en');
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
        Schema::dropIfExists('baradas');
    }
}
