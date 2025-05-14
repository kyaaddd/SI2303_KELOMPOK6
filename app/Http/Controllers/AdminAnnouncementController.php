<?php

namespace App\Http\Controllers;

use App\Models\Announcement;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;

class AdminAnnouncementController extends Controller
{
    // Tampilkan semua pengumuman
    public function index()
    {
        $announcements = Announcement::latest()->get();
        return view('admin.announcements.index', compact('announcements'));
    }

    // Tampilkan form tambah
    public function create()
    {
        return view('admin.announcements.create');
    }

    // Simpan data baru
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|max:255',
            'content' => 'required',
        ]);

        Announcement::create([
            'title' => $request->title,
            'slug' => Str::slug($request->title) . '-' . uniqid(),
            'content' => $request->content,
            'user_id' => Auth::id(),
        ]);

        return redirect()->route('pengumuman.index')->with('success', 'Pengumuman berhasil ditambahkan.');
    }

    // Tampilkan form edit
    public function edit(Announcement $pengumuman)
    {
        return view('admin.announcements.edit', compact('pengumuman'));
    }

    // Update data
    public function update(Request $request, Announcement $pengumuman)
    {
        $request->validate([
            'title' => 'required|max:255',
            'content' => 'required',
        ]);

        $pengumuman->update([
            'title' => $request->title,
            'slug' => Str::slug($request->title) . '-' . uniqid(),
            'content' => $request->content,
        ]);

        return redirect()->route('pengumuman.index')->with('success', 'Pengumuman berhasil diperbarui.');
    }

    // Hapus pengumuman
    public function destroy(Announcement $pengumuman)
    {
        $pengumuman->delete();
        return redirect()->route('pengumuman.index')->with('success', 'Pengumuman berhasil dihapus.');
    }

    // Tampilkan detail pengumuman berdasarkan slug
    public function show(Announcement $pengumuman)
    {
        return view('admin.announcements.show', compact('pengumuman'));
    }
}
