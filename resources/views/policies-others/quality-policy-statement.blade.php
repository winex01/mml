@extends('layouts.page-details')

@section('content')
  <section id="about">
  <div class="container">

    <header class="section-header">
      <h3>Quality Policy Statement</h3>
    </header>

    <div class="row about-container">
      <div class="col-lg-6 content order-lg-1 order-2">
        {!! html_entity_decode(setting('content.quality_policy_statement')) !!}
      </div>

      <div class="col-lg-6 background order-lg-2 order-1 wow fadeInUp">
        <div class="row">
          <img src="img/about-extra-2.svg" class="img-fluid" alt="">
        </div>
      </div>
    </div>

  </div>
</section>

@endsection