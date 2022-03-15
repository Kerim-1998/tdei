<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCarouselsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('carousels', function (Blueprint $table) {
            $table->id('id');
            $table->string('h1texttm');
            $table->string('h1textru');
            $table->string('h1texten');
            $table->string('spantexttm');
            $table->string('spantextru');
            $table->string('spantexten');
            $table->string('photo')->nullable();
            $table->string('nid')->nullable();
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
        Schema::dropIfExists('carousels');
    }
}
