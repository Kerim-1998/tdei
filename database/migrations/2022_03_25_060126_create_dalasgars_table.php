<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDalasgarsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dalasgars', function (Blueprint $table) {
            $table->id('id');
            $table->longText('dusundiris_tm');
            $table->longText('dusundiris_ru');
            $table->longText('dusundiris_en');
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
        Schema::dropIfExists('dalasgars');
    }
}
