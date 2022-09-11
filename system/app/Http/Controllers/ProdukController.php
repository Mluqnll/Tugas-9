<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Produk;
use App\Models\Penjual;


class ProdukController extends Controller
{
    public function index()
    {
        $data['list_produk'] = Produk::all();
        return view('admin.superadmin.produk.index', $data);
    }

    public function create()
    {
        $data['list_penjual'] = Penjual::all();
        return view('admin.superadmin.produk.create', $data);
    }

    public function store(Request $request)
    {
        $penjual = New Produk;
        $penjual->nama = request('nama');
        $penjual->id_penjual = request('id_penjual');
        $penjual->stock = request('stock');
        $penjual->harga = request('harga');
        $penjual->deskripsi = request('deskripsi');
        $penjual->save();
        return redirect('admin/produk')->with('success', 'Data Berhasil Ditambahkan');
    }

    public function show(Produk $produk)
    {
        $data['produk'] = $produk;
        return view('admin.superadmin.produk.show', $data);
    }

    public function edit(Produk $produk)
    {
        $data['produk'] = $produk;
        return view('admin.superadmin.produk.edit', $data);
    }

    public function update(Produk $produk)
    {
        $produk->nama = request('nama');
        $produk->stock = request('stock');
        $produk->harga = request('harga');
        $produk->deskripsi = request('deskripsi');
        $produk->save();
        return redirect('admin/produk')->with('primary', 'Data Berhasil Diedit');
    }

    public function destroy($id)
    {
        Produk ::destroy($id);
        return back()->with('danger', 'Data Berhasil hapus');
    }

    function filter(){
        $nama = request('nama');
        $data['list_produk'] = Produk::where('nama','like', "%$nama%")->get();
        $data['nama'] = $nama;
        return view('admin.superadmin.produk.index', $data);
    }
}
