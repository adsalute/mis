<!DOCTYPE html>
<html lang="en">
<head>
    @include('includes.head')
</head>
<body>
    @include('includes.header')
    @include('includes.load')
        <!-- START MAIN -->
        <div id="main">
      <!-- START WRAPPER -->
      <div class="wrapper">
       @include('includes.nav')
       <section id="content">
        @yield('content')
        </section>
        
        </div>
      <!-- END WRAPPER -->
    </div>
    <!-- END MAIN -->
    <footer class="page-footer gradient-45deg-light-blue-cyan">
    @include('includes.footer')
    </footer>
    @include('includes.footer-scripts')
</body>
</html>