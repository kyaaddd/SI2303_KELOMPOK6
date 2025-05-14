@extends('layouts.main')

@section('content')
<section class="announcement-detail section-bg py-5">
    <div class="container">
        <div class="section-title">
            <h2>{{ $pengumuman->judul }}</h2>
            <p class="text-muted">Diposting {{ $pengumuman->created_at->diffForHumans() }} oleh {{ $pengumuman->user->name ?? 'Admin' }}</p>
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-8">
                <!-- Card pengumuman -->
                <div class="card mb-3 shadow-sm">
                    @if ($pengumuman->gambar)
                        <img src="{{ asset('storage/' . $pengumuman->gambar) }}" class="card-img-top" alt="Gambar Pengumuman">
                    @endif
                    <div class="card-body">
                        <article>
                            {!! $pengumuman->body !!}
                        </article>
                    </div>
                </div>

                <!-- Tombol kembali di bawah card -->
                <div class="text-start mt-2">
                    <a href="/pengumuman" class="btn btn-sm btn-outline-secondary">
                        &larr; Kembali ke Daftar Pengumuman
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
@endsection
