@extends('layouts.main')

@section('content')
<section class="counts section-bg">
    <div class="container">
  
      <div class="section-title">
        <h2>Pengumuman</h2>
      </div>
  
      <div class="row">
        @foreach ($pengumumans as $pengumuman)
            <div class="col-lg-4 col-md-6 mb-3" data-aos="fade-up">
                <div class="count-box announcement-card">
                    <div class="card">
                        <img src="{{ asset('storage/' . $pengumuman->gambar) }}" alt="Gambar Pengumuman" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">{{ $pengumuman->judul }}</h5>
                            <div class="announcement-date">{{ $pengumuman->created_at->diffForHumans() }}</div>
                            <p class="card-text">{{ $pengumuman->excerpt }}</p>                           
                        </div>
                        <div class="card-footer">
                            <a href="/pengumuman/{{ $pengumuman->slug }}" type="button" class="btn btn-link float-end">Selengkapnya</a>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
      </div>

      {{ $pengumumans->links() }}

    </div>
</section>
@endsection
