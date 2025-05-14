@extends('admin.layouts.main')

@section('content')
<div class="container">
    <h1>Daftar Galeri</h1>
    <a href="{{ route('gallery.create') }}" class="btn btn-primary mb-3">Tambah Galeri</a>

    @foreach ($galleries as $gallery)
        <div class="card mb-3">
            <img src="{{ asset('storage/' . $gallery) }}" class="card-img-top" alt="{{ $gallery->title }}">
            <div class="card-body">
                <h5 class="card-title">{{ $gallery->title }}</h5>

                {{-- Pastikan model Gallery memakai getRouteKeyName() -> 'slug' --}}
                <a href="{{ route('gallery.show', $gallery) }}" class="btn btn-info btn-sm">Lihat</a>
                <a href="{{ route('gallery.edit', $gallery) }}" class="btn btn-warning btn-sm">Edit</a>

                <form action="{{ route('gallery.destroy', $gallery) }}" method="POST" class="d-inline" onsubmit="return confirm('Yakin hapus galeri ini?')">
                    @csrf
                    @method('DELETE')
                    <button class="btn btn-danger btn-sm">Hapus</button>
                </form>
            </div>
        </div>
    @endforeach    
</div>
@endsection
