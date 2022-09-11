<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Pembeli;


class PembeliController extends Controller
{
    public function index()
    {
        $data['list_pembeli'] = Pembeli::all();
        return view('admin.superadmin.pembeli.index', $data);
    }

    public function create()
    {
        return view('admin.superadmin.pembeli.create');
    }

    public function store(Request $request)
    {
        $pembeli = New Pembeli;
        $pembeli->nama = request('nama');
        $pembeli->username = request('username');
        $pembeli->email = request('email');
        $pembeli->nomor_hp = request('nomor_hp');
        $pembeli->password = bcrypt (request('password'));
        $pembeli->save();
        return redirect('admin/pembeli')->with('success', 'Data Berhasil Ditambahkan');
    }

    public function show(Pembeli $pembeli)
    {
        $data['pembeli'] = $pembeli;
        return view('admin.superadmin.pembeli.show', $data);
    }

    public function edit(Pembeli $pembeli)
    {
        $data['pembeli'] = $pembeli;
        return view('admin.superadmin.pembeli.edit', $data);
    }

    public function update(Pembeli $pembeli)
    {
        $pembeli->nama = request('nama');
        $pembeli->username = request('username');
        $pembeli->email = request('email');
        $pembeli->nomor_hp = request('nomor_hp');
        $pembeli->save();
        return redirect('admin/pembeli')->with('primary', 'Data Berhasil Diedit');
    }

    public function destroy($id)
    {
        Pembeli ::destroy($id);
        return back()->with('danger', 'Data Berhasil hapus');
    }

    
}
