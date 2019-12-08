<!--==========================
      Contact Section
    ============================-->
    <section id="contact">
      <div class="container-fluid">

        <div class="section-header">
          <h3>Contact Us</h3>
        </div>

        <div class="row wow fadeInUp">

          <div class="col-lg-6">
            <div class="map mb-4 mb-lg-0">
              {{-- <iframe src="https://maps.google.com/maps?q=Brgy%20San%20Antonio%20Cebu%20city&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" style="border:0; width: 100%; height: 312px;" allowfullscreen></iframe> --}}
              {!! setting('site.google_map') !!}
            </div>


          </div>

          <div class="col-lg-6">
            <div class="row">
              <div class="col-md-5 info">
                <i class="ion-ios-location-outline"></i>
                <p>{{ setting('company.street_address').' '.setting('company.brgy_address') }}</p>
              </div>
              <div class="col-md-4 info">
                <i class="ion-ios-email-outline"></i>
                <p>{{ setting('company.email') }}</p>
              </div>
              <div class="col-md-3 info">
                <i class="ion-ios-telephone-outline"></i>
                <p>{{ setting('company.phone') }}</p>
              </div>
            </div>

            <div class="form">
              <div id="sendmessage">Your message has been sent. Thank you!</div>
              <div id="errormessage"></div>
              <form action="{{ route('contact.submit') }}" method="POST" role="form" {{-- class="contactForm" --}}>
                @csrf
                <div class="form-row">

                  <div class="form-group col-lg-6">
                    <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" id="name" placeholder="Your Name" value="{{ old('name') }}"/>
                    @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                  </div>

                  <div class="form-group col-lg-6">
                    <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" id="email" placeholder="Your Email" value="{{ old('email') }}"/>
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                  </div>

                </div>

                <div class="form-group">
                  <textarea class="form-control @error('message') is-invalid @enderror" name="message" rows="5" data-rule="required" placeholder="Message">{{ old('message') }}</textarea>
                  @error('message')
                      <span class="invalid-feedback" role="alert">
                          <strong>{{ $message }}</strong>
                      </span>
                  @enderror
                </div>

                <div class="text-center"><button type="submit" title="Send Message">Send Message</button></div>

              </form>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #contact -->


