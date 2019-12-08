
<section id="newsletter">
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 footer-info">
            <h5>{{ setting('site.title') }}</h5>
            <p>{{ setting('content.mission') }}</p>
            <p>{{ setting('content.objective') }}</p>
            <p>{{ setting('content.vission') }}</p>

          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><a href="#intro">Home</a></li>
              <li><a href="#about">About Us</a></li>
              <li><a href="#services">Services</a></li>
              <li><a href="#portfolio">Portfolio</a></li>
              <li><a href="#why-us">Policies & Others</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
              {{ setting('company.street_address') }} <br>
              {{ setting('company.brgy_address') }}<br>
              {{ setting('company.country') }}<br>
              <strong>Phone:</strong> {{ setting('company.phone') }}<br>
              <strong>Email:</strong> {{ setting('company.email') }}<br>
            </p>

            {{-- <div class="social-links">
              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
              <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
            </div> --}}

          </div>

          <div class="col-lg-3 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>
              {{ setting('content.newsletter') }}
            </p>
            <form action="{{ route('subscribe.newsletter') }}" method="post">
              @csrf
              <input type="email" name="email"><input type="submit"  value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>MML</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=NewBiz
        -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer>
</section>
