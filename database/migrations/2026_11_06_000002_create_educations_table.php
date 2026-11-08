<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('educations', function (Blueprint $table) {
            $table->id();
            $table->foreignId('profile_id')->constrained()->cascadeOnDelete();
            $table->string('institusi');
            $table->string('jenjang')->nullable();
            $table->string('jurusan')->nullable();
            $table->unsignedSmallInteger('tahun_mulai')->nullable();
            $table->unsignedSmallInteger('tahun_selesai')->nullable();
            $table->decimal('ipk', 3, 2)->nullable();
            $table->text('deskripsi')->nullable();
            $table->unsignedSmallInteger('urutan')->default(0);
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('educations');
    }
};
