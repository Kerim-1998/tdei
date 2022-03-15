<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMugustunsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mugustuns', function (Blueprint $table) {
            $table->id('id');
            $table->string('patent_photo');
            $table->string('patent_ady_tm');
            $table->string('patent_ady_ru');
            $table->string('patent_ady_en');
            $table->string('mug_ady_tm');
            $table->string('mug_ady_ru');
            $table->string('mug_ady_en');
            $table->string('hunar_tm');
            $table->string('hunar_ru');
            $table->string('hunar_en');
            $table->longText('dusundiris_tm')->nullable();
            $table->longText('dusundiris_ru')->nullable();
            $table->longText('dusundiris_en')->nullable();
            $table->string('patent_photo1');
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
        Schema::dropIfExists('mugustuns');
    }
}
