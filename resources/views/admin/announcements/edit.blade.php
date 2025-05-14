@extends('admin.layouts.main')

@section('content')
<div class="container">
    <h2>Edit Pengumuman</h2>

    @if ($errors->any())
        <div class="alert alert-danger">
            <ul>@foreach ($errors->all() as $error)<li>{{ $error }}</li>@endforeach</ul>
        </div>
    @endif

    <form action="{{ route('pengumuman.update', $pengumuman->slug) }}" method="POST">
        @csrf
        @method('PUT')
        <div class="form-group">
            <label>Judul</label>
            <input type="text" name="title" class="form-control" value="{{ old('title', $pengumuman->title) }}">
        </div>
        <div class="form-group">
            <label>Isi</label>
            <textarea name="content" class="form-control" rows="5">{{ old('content', $pengumuman->content) }}</textarea>
        </div>
        <button class="btn btn-primary mt-2">Update</button>
    </form>
</div>
@endsection
