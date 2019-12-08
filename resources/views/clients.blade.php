<section id="clients" class="section-bg">
  <div class="container">

    <header class="section-header">
      <h3>Our Clients</h3>
    </header>

    <div class="row">

      @foreach($clients as $client)
        <div class="col-md-12 col-lg-12 offset-lg-1 wow bounceInUp" data-wow-duration="1.4s">
          <div class="box">
            <h4 class="title"><a href="{{ ($client->link) ?: 'javascript:void(0)' }}">{{ $client->name }} - {{ $client->location }} ({{ $client->task }})</a></h4>
          </div>
        </div>
      @endforeach

    </div>

  </div>
</section>