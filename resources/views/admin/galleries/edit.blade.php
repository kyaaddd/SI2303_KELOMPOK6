@extends('admin.layouts.main')

@section('content')
<div class="container">
    <h1>Edit Galeri</h1>

    <form action="{{ route('gallery.update', $gallery->slug) }}" method="POST" enctype="multipart/form-data">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label for="title" class="form-label">Judul</label>
            <input type="text" class="form-control" name="title" value="{{ old('title', $gallery->title) }}" required>
        </div>

        <div class="mb-3">
            <label for="image" class="form-label">Gambar (biarkan kosong jika tidak ingin mengubah)</label>
            <input type="file" class="form-control" name="image" accept="image/*">
            <img src="{{ asset('storage/' . $gallery->image_path) }}" alt="{{ $gallery->title }}" class="mt-2" width="200">
        </div>

        <button type="submit" class="btn btn-primary">Update</button>
        <a href="{{ route('gallery.index') }}" class="btn btn-secondary">Batal</a>
    </form>
</div>
@endsection
