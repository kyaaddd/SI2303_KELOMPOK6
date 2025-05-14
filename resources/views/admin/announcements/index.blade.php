@extends('admin.layouts.main')

@section('content')
<div class="container">
    <h2>Daftar Pengumuman</h2>
    <a href="{{ route('pengumuman.create') }}" class="btn btn-primary mb-3">+ Tambah Pengumuman</a>

    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>Judul</th>
                <th>Penulis</th>
                <th>Isi</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($announcements as $pengumuman)
                <tr>
                    <td>{{ $pengumuman->title }}</td>
                    <td>{{ $pengumuman->user->name ?? '-' }}</td>
                    <td>{{ Str::limit($pengumuman->content, 50) }}</td>
                    <td>
                        <a href="{{ route('pengumuman.edit', $pengumuman->slug) }}" class="btn btn-sm btn-warning">Edit</a>
                        <form action="{{ route('pengumuman.destroy', $pengumuman->slug) }}" method="POST" style="display:inline-block;">
                            @csrf
                            @method('DELETE')
                            <button class="btn btn-sm btn-danger" onclick="return confirm('Yakin ingin menghapus?')">Hapus</button>
                        </form>
                        <a href="{{ route('pengumuman.show', $pengumuman->slug) }}" class="btn btn-sm btn-info">Lihat</a>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection
