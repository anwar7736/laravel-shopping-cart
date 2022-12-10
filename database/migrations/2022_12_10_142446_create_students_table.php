<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('f_name');
            $table->string('m_name');
            $table->integer('roll');
            $table->integer('reg');
            $table->foreignId('board_id')->constrained('boards')->onDelete('cascade');
            $table->string('group');
            $table->string('type');
            $table->string('dob');
            $table->foreignId('institute_id')->constrained('institutes')->onDelete('cascade');
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
        Schema::dropIfExists('students');
    }
}
