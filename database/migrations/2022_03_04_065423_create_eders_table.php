<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('eders', function (Blueprint $table) {
            $table->id('id');
            $table->longText('ders_at_tm');
            $table->longText('ders_at_ru');
            $table->longText('ders_at_en');
            $table->longText('mug_at_tm');
            $table->longText('mug_at_ru');
            $table->longText('mug_at_en');
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
        Schema::dropIfExists('eders');
    }
}
