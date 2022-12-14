@php
  // $menuFields= App\Staticdata::where(['type' => 'linh-vuc-hoat-dong', 'status' => 'ACTIVE'])->get();

  $menu = menu('Home menu', '_json');
@endphp

<!-- HEADER izi -->
<div class="header header1">
  <!-- TOP BAR -->
  <div class="container" style="padding: .5rem 2rem;">

    <div>
      <ul class="phone">
        <li><span class="fa fa-envelope"></span> Mail: {{ setting('site.email') }}</li>
        <li><span class="fa fa-phone"></span><a href="tel:{{setting('site.phone')}}" style="color: #fff !important;">{{ setting('site.phone') }}</a> - <a href="tel:{{setting('site.phone2')}}" style="color: #fff !important;">{{ setting('site.phone2') }}</a></li>
      </ul>
    </div>
  </div>

</div>
<header>
  <div class="main-menu menu-home">
    <div class="container">
      <!-- Menu -->
      <nav class="navbar navbar-default">
        <div class="container-fluid" style="padding: 0;">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <a href="{{ asset('/') }}" class="mobile-logo" style="overflow: hidden;">
              <img src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}" alt="{{ setting('site.title') }}" style="filter: brightness(0) invert(1); height: 100%; width: auto" loading="lazy"/>
            </a>
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
              data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#" style="height: initial;"></a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->

          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="align-items: center; overflow: hidden;padding: 0;">
            <a href="{{ asset('/') }}" class="logo"><img src="{{ \TCG\Voyager\Facades\Voyager::image(setting('site.logo')) }}" alt="{{ setting('site.title') }}" loading="lazy"/></a>

            {{-- @dd(env('APP_URL')) --}}

            <ul class="nav navbar-nav navbar-right">
              @foreach ($menu as $item)
                @if (count($item->children) > 0)
                  <li class="dropdown">
                    <a href="{{ asset($item->url) }}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{{ $item->title }}<span class="caret"></span></a>

                    <ul class="dropdown-menu">
                      @foreach ($item->children as $child)
                        <li>
                          <a href="{{ asset($child->url) }}">{{ $child->title }}</a>
                        </li>
                      @endforeach
                    </ul>
                  </li>
                @else
                  <li class="@if($item->url == '/'.Route::current()->uri) active @endif">
                    <a href="{{ asset($item->url) }}">{{ $item->title }}</a>
                  </li> 
                @endif
              @endforeach
              {{-- <li class="active"><a href="">Trang ch???</a></li>
              <li class=""><a href="about.html">Gi???i thi???u</a></li>
              <li class="dropdown">
                <a href="/" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">D???ch v???<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li class=""><a href="/pages/dich-vu-giup-viec-theo-gio">D???ch v??? gi??p vi???c theo gi??? c?? b???n</a></li>
                  <li class=""><a href="/pages/quan-gia-4-0">D???ch V??? Gi??p Vi???c Tr???n G??i</a></li>
                  <li class=""><a href="/pages/dich-vu-tong-ve-sinh-doanh-nghiep">D???ch v??? T???ng v??? sinh Doanh Nghi???p</a></li>
                  <li class=""><a href="/pages/dich-vu-sap-xep-nha-theo-phong-cach-toi-gian">D???ch v??? s???p x???p nh?? theo phong c??ch t???i gi???n</a></li>
                  <li class=""><a href="/pages/hometay-condotel">D???ch V??? Qu???n Gia cho Homestay v?? Condotel</a></li>
                  <li class=""><a href="/pages/dich-vu-giat-rem">D???ch V??? Gi???t R??m</a></li>
                  <li class=""><a href="/pages/dich-vu-giat-ghe-sofa-giat-tham-giat-rem">D???ch V??? Gi???t Th???m</a></li>
                  <li class=""><a href="/pages/dich-vu-giat-ghe-sofa">D???ch V??? Gi???t Gh??? Sofa</a></li>
                  <li class=""><a href="/pages/dich-vu-ve-sinh-sau-xay-dung">D???ch V??? V??? Sinh Sau X??y D???ng</a></li>
                </ul>
              </li>
              <li class=""><a href="blogs.html">BLOG</a></li>
              <li class=""><a href="faq.html">FAQ</a></li>
              <li class=""><a href="contact.html">Li??n h??? ?????t d???ch v???</a></li>
              <li class=""><a href="recruitment.html">TUY???N D???NG</a></li> --}}
            </ul>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>


    </div> <!-- /.container -->
  </div> <!-- /.main-menu -->
</header>