@extends('admin.layouts.main') 

@section('content')
<div class="container">
    <h1>{{ $pengumuman->title }}</h1>
    <p><strong>Ditulis oleh:</strong> {{ $pengumuman->user->name ?? 'Admin' }}</p>
    <hr>
    <div>
        {!! nl2br(e($pengumuman->content)) !!}
    </div>
    <a href="{{ route('pengumuman.index') }}" class="btn btn-secondary mt-3">Kembali ke daftar</a>
</div>
@endsection
