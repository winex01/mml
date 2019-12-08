<section id="portfolio" class="clearfix">
      <div class="container">

        <header class="section-header">
          <h3 class="section-title">Our Portfolio</h3>
        </header>

        <div class="row">
          <div class="col-lg-12">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              @foreach($categories as $category)
                <li data-filter=".filter-{{ $category->id }}">{{ $category->description }}</li>
              @endforeach
            </ul>
          </div>
        </div>

        <div class="row portfolio-container">
          @foreach($portfolios as $portfolio)
            <div class="col-lg-4 col-md-6 portfolio-item filter-{{ $portfolio->portfolio_category_id }}">
              <div class="portfolio-wrap">
                <img src="{{ Voyager::image($portfolio->thumbnail('medium', 'cover')) }}" class="img-fluid" alt="">
                <div class="portfolio-info">
                  <p>{{ $portfolio->title }}</p>
                  <div>
                    <a href="{{ Voyager::image($portfolio->cover) }}" data-lightbox="portfolio" data-title="{{ $portfolio->title }}" class="link-preview" title="Preview"><i class="ion ion-eye"></i></a>
                    <a href="{{ route('portfolio', $portfolio->id) }}" class="link-details" title="View All"><i class="ion ion-android-open"></i></a>
                  </div>
                </div>
              </div>
            </div>
          @endforeach
        </div>

      </div>
    </section>