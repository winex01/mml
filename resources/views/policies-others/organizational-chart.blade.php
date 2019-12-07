@extends('layouts.page-details')

@section('content')
  <section id="about">
  <div class="container">

    <div class="text-center">
      <h3 class="ml-4">Organizational Chart</h3>
	  <img src="{{ Voyager::image( Voyager::setting("site.organizational_chart")) }}" class="img-responsive" alt="...">
	</div>

  </div>
</section>

@endsection