<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class GalleryController extends Controller
{
    // Tampilkan semua galeri
    public function index()
    {
        $galleries = Gallery::latest()->get();
        return view('admin.galleries.index', compact('galleries'));
    }

    // Tampilkan form untuk membuat galeri baru
    public function create()
    {
        return view('admin.galleries.create');
    }

    // Simpan galeri baru
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'image' => 'required|image|max:2048',
        ]);

        $path = $request->file('image')->store('gallery', 'public');

        Gallery::create([
            'title' => $request->title,
            'slug' => Str::slug($request->title),
            'image_path' => $path,
        ]);

        return redirect()->route('gallery.index')->with('success', 'Galeri berhasil ditambahkan.');
    }

    // Tampilkan satu galeri
    public function show(Gallery $gallery)
    {
        return view('admin.galleries.show', compact('gallery'));
    }

    // Tampilkan form edit galeri
    public function edit(Gallery $gallery)
    {
        return view('admin.galleries.edit', compact('gallery'));
    }

    // Update galeri
    public function update(Request $request, Gallery $gallery)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'image' => 'nullable|image|max:2048',
        ]);

        $gallery->title = $request->title;
        $gallery->slug = Str::slug($request->title);

        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('gallery', 'public');
            $gallery->image_path = $path;
        }

        $gallery->save();

        return redirect()->route('gallery.index')->with('success', 'Galeri berhasil diperbarui.');
    }

    // Hapus galeri
    public function destroy(Gallery $gallery)
    {
        $gallery->delete();
        return redirect()->route('gallery.index')->with('success', 'Galeri berhasil dihapus.');
    }
}
