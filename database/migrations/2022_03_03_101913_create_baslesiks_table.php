<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBaslesiksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('baslesiks', function (Blueprint $table) {
            $table->id('id');
            $table->string('at_tm');
            $table->string('at_ru');
            $table->string('at_en');
            $table->longText('dusundiris_tm');
            $table->longText('dusundiris_ru');
            $table->longText('dusundiris_en');
            $table->string('yyl_id');
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
        Schema::dropIfExists('baslesiks');
    }
}
