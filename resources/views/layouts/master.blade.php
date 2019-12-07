@include('layouts.header')
<body>
  @include('layouts.menu')
  @include('layouts.jumbotron')

  <main id="main">
    @yield('content')
  </main>

  @include('layouts.footer')
  @include('layouts.bottom-scripts')
</body>
</html>
