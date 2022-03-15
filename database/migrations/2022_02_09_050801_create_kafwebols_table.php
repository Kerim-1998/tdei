<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKafwebolsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kafwebols', function (Blueprint $table) {
            $table->id('id');
            $table->string('kaf_photo');
            $table->string('kaf_at_tm');
            $table->string('kaf_at_ru');
            $table->string('kaf_at_en');
            $table->string('gysga_text_tm');
            $table->string('gysga_text_ru');
            $table->string('gysga_text_en');
            $table->longText('dusundiris_tm');
            $table->longText('dusundiris_ru');
            $table->longText('dusundiris_en');
            $table->string('bol_photo');
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
        Schema::dropIfExists('kafwebols');
    }
}
