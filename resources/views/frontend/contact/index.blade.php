@extends('frontend.layouts.default')

@section('content')


    <div id="breadcrumbs" class="flexbox-container ">
      <div class="breadcrumb-inner">
        <div class="container" >
          <nav class="breadcrumb" role="navigation" aria-label="breadcrumbs">
            <a href="{{ asset('') }}" title="general.breadcrumbs.home_link_title">Trang chủ /</a>
            <span class="revicon-angle-right"></span>
            <span>{{ $title }}</span>
          </nav>
        </div>
      </div>
    </div>

    <div class="container" style="padding-bottom: 25px;">
    <style>
      .cs-contact iframe {
        width: 100% !important;
        height: 350px !important;
      }
    </style>

    <div class="row cs-contact">
      <div class="col-sm-12">
        {!! setting('site.map') !!}
      </div>
    </div>
    <!--  ICON BOXES -->
    <div class="about1-numbers contact">
      <div class="row">
        <div class="col-sm-12">
          <h2>THÔNG TIN LIÊN HỆ</h2>
          <hr class="small" />
          @if (\Session::has('success'))
            <div class="alert alert-success">
              <ul>
                <li>{!! \Session::get('success') !!}</li>
              </ul>
            </div>
          @endif
        </div>
        <div class="col-sm-8">
          <div id="contactform">
            <form accept-charset='UTF-8' action='/feedback' class='contact-form' method='post'>
              @csrf
              <input name='title' type='hidden' value='contact'>
              <div class="row">
                <div class="col-sm-6">
                  <label for="contactFormName">Họ Tên:*</label>
                  <input required type="text" class="form-control" name="name" id="contactFormName"
                    tabindex="1" value="" />
                </div>
                <div class="col-sm-6">
                  <label for="contactFormName">Số điện thoại:*</label>
                  <input required type="text" class="form-control" name="phone" id="contactFormPhone"
                    tabindex="1" value="" />
                </div>
                <div class="col-sm-12">
                  <label for="contactFormEmail">Email:*</label>
                  <input required type="email" class="form-control" name="email" id="contactFormEmail"
                    tabindex="2" value="" />
                </div>
                <div class="col-sm-12">
                  <label for="contactFormMessage">Tin nhắn:*</label>
                  <textarea class="form-control" name="content" id="contactFormMessage"
                    tabindex="4"></textarea>
                </div>
              </div>
              <p><input name="submit" type="submit" id="submit" class="submit" value="Gửi" tabindex="5" /></p>
            </form>
          </div>
        </div>

        <div class="col-sm-4">
          <div class="shadow-effect">
            <div class="row">
              <div class="col-sm-12 col-md-3">
                <div class="number green"><span class=""></span></div>
              </div>
              <div class="col-sm-12 col-md-9">
                <h4>Liên hệ</h4>
                <span>{{ setting('site.address') }}</span>
                <p><b>Tel: <a href="tel:{{setting('site.phone')}}" >{{setting('site.phone')}}</a></b></p>
                <p><b>E-mail: {{ setting('site.email') }}</b></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--  END OF ICON BOXES -->
  </div>

@endsection
