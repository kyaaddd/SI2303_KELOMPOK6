<?php

namespace App\Http\Controllers;

use App\Models\Announcement;
use Illuminate\Http\Request;

class AnnouncementController extends Controller
{
    public function index()
     {
        // Ambil semua pengumuman dengan pagination, misalnya 6 per halaman
        $pengumumans = Announcement::latest()->paginate(6);

        return view('pengumuman.index', compact('pengumumans'));
     }

    // Menampilkan detail pengumuman berdasarkan slug
    public function detail(Announcement $pengumuman)
    {
        return view('pengumuman.detail', [
            'pengumuman' => $pengumuman
        ]);
    }
}
  
