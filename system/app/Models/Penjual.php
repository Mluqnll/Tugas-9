<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Models\Model;
use App\Models\Produk;


class Penjual extends Model
{

	protected $table = "penjual";

	function getJenisKelaminStringAttribute(){
        return($this->jenis_kelamin ==1) ? "Laki-laki" : "Perempuan";
    }
}