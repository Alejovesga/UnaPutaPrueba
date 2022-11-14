<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateScalesUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('scales_users', function (Blueprint $table) {
            $table->engine="InnoDB";
            $table->id();
            $table->integer('estructura');
            $table->integer('proceso');
            $table->integer('resultado');
            $table->bigInteger('codigoUsuario')->unsigned()->unique();
            $table->bigInteger('category')->unsigned()->unique();
            $table->timestamps();
            $table->foreign('codigoUsuario')->references('Codigorandom')->on('users_inscriptions')->onDelete("cascade");
            $table->foreign('category')->references('id')->on('categories');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('scales_users');
    }
}
