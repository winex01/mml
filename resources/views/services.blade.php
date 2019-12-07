<section id="services" class="section-bg">
  <div class="container">

    <header class="section-header">
      <h3>Services</h3>
    </header>

    <div class="row">


      @foreach($services as $service)
        <div class="col-md-6 col-lg-5 {{ ($loop->iteration % 2 == 0) ? '' : 'offset-lg-1' }} wow bounceInUp" data-wow-duration="1.4s">
          <div class="box">
            <h4 class="title"><a href="javascript:void(0)">{{ $service->name }}</a></h4>
          </div>
        </div>
      @endforeach


    </div>

  </div>
</section>