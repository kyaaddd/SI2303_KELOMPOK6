@extends('admin.layouts.main')

@section('content')
<div class="container">
    <h1>Detail Galeri</h1>

    <div class="card mb-3">
        <img src="{{ asset('storage/' . $gallery->image_path) }}" class="card-img-top" alt="{{ $gallery->title }}">
        <div class="card-body">
            <h5 class="card-title">{{ $gallery->title }}</h5>
            <a href="{{ route('gallery.edit', $gallery->slug) }}" class="btn btn-warning">Edit</a>
            <a href="{{ route('gallery.index') }}" class="btn btn-secondary">Kembali</a>
        </div>
    </div>
</div>
@endsection
