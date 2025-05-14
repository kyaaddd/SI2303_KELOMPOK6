<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class AdminGalleryController extends Controller
{
    // Tampilkan semua galeri
    public function index()
    {
        $galleries = Gallery::latest()->get();
        return view('admin.galleries.index', compact('galleries'));
    }

    // Form tambah galeri
    public function create()
    {
        return view('admin.galleries.create');
    }

    // Simpan galeri baru
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|max:255',
            'image' => 'required|image|max:2048'
        ]);

        $imagePath = $request->file('image')->store('galleries', 'public');

        Gallery::create([
            'title' => $request->title,
            'slug' => Str::slug($request->title) . '-' . uniqid(),
            'image_path' => $imagePath,
        ]);

        return redirect()->route('gallery.index')->with('success', 'Galeri berhasil ditambahkan.');
    }

    // Tampilkan detail galeri
    public function show(Gallery $gallery)
    {
        return view('admin.galleries.show', compact('gallery'));
    }

    // Form edit galeri
    public function edit(Gallery $gallery)
    {
        return view('admin.galleries.edit', compact('gallery'));
    }

    // Update galeri
    public function update(Request $request, Gallery $gallery)
    {
        $request->validate([
            'title' => 'required|max:255',
            'image' => 'nullable|image|max:2048'
        ]);

        $data = [
            'title' => $request->title,
            'slug' => Str::slug($request->title), // Hapus uniqid() di sini
        ];

        if ($request->hasFile('image')) {
            Storage::disk('public')->delete($gallery->image_path);
            $data['image_path'] = $request->file('image')->store('galleries', 'public');
        }

        $gallery->update($data);

        return redirect()->route('gallery.index')->with('success', 'Galeri berhasil diperbarui.');
    }
    // Hapus galeri
    public function destroy(Gallery $gallery)
    {
        // Hapus gambar dari storage
        Storage::disk('public')->delete($gallery->image_path);
        // Hapus galeri dari database
        $gallery->delete();
        return redirect()->route('gallery.index')->with('success', 'Galeri berhasil dihapus.');
    }
}