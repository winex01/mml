
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
  <meta charset="utf-8">
  <title>{{ setting('site.title') }}</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  @include('layouts.header')

</head>

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
