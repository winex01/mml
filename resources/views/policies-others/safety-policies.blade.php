@extends('layouts.page-details')

@section('content')
  <section id="about">
  <div class="container">

    <header class="section-header">
      <h3>SAFETY POLICIES</h3>
    </header>

    <!-- about -->
    <div class="row about-container">
      <div class="col-lg-6 content order-lg-1 order-2">
        {!! setting('site.safety_policies') !!}
      </div>

      <div class="col-lg-6 background order-lg-2 order-1 wow fadeInUp">
        <div class="row">
          <img src="img/about-extra-1.svg" class="img-fluid" alt="">
        </div>
        <div style="margin-bottom: 250px;"></div>
        <div class="row">
          <img src="img/about-extra-2.svg" class="img-fluid" alt="">
        </div>
      </div>
    </div>

  </div>
</section>

@endsection