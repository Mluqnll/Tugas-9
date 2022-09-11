<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use App\Models\Model;
use App\Models\Penjual;


class Produk extends Model
{

	protected $table = "produk";

	function Penjual(){
		return $this->belongsTo(Penjual::class, 'id_penjual');
	}

	function getHargaStringAttribute(){
		return "Rp. ".number_format($this->attributes['harga']);
	}

	function getTanggalProduksiAttribute(){
		$tanggal = $this->created_at;
		return strftime("%d %b %Y", strtotime($this->created_at));
	}

	protected $casts = [
		'updated_at' => 'datetime',
		'stock' => 'decimal:2'
	];
}