@extends('layouts.page-details')

@section('content')
<section id="portfolio" class="clearfix">
      <div class="container">

    <header class="section-header">
      <h3 class="section-title">{{ $portfolio->title }}</h3>
    </header>


    <div class="row portfolio-container">
      @foreach(json_decode($portfolio->images) as $img)
        <div class="col-lg-4 col-md-6 portfolio-item filter-{{ $portfolio->id }}">
          <div class="portfolio-wrap">
            <img src="{{ Voyager::image($img) }}" class="img-fluid" alt="">
            <div class="portfolio-info">
              <p>Click to view</p>
              <div>
                <a href="{{ Voyager::image($img) }}" data-lightbox="portfolio" data-title="{{ $portfolio->title }}" class="link-preview" title="Preview"><i class="ion ion-eye"></i></a>
              </div>
            </div>
          </div>
        </div>
      @endforeach
    </div>

  </div>
</section>
@endsection