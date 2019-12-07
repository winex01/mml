@include('layouts.header')
<body>
  <header id="header" class="fixed-top">
    <div class="container">
      @include('layouts.site-logo')
      <nav class="main-nav float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="{{ route('home') }}">Back</a></li>
        </ul>
      </nav><!-- .main-nav -->
    </div>
  </header><!-- #header -->


  <main id="main">
    <div class="m-5"></div>
    @yield('content')
  </main>

  @include('layouts.footer')
  @include('layouts.bottom-scripts')

</body>
</html>
