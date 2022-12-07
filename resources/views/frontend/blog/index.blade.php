@extends('frontend.layouts.default')

@section('content')

{{--    <section class="section darkbg fullscreen paralbackground parallax"--}}
{{--             style="background-image:url({{ Voyager::image( setting('site.Image-breadcrumb') ) }});"--}}
{{--             data-img-width="1688" data-img-height="1125" data-diff="100">--}}
{{--        <div class="overlay lightoverlay"></div>--}}
{{--        <div class="container">--}}
{{--            <div class="title-area text-center">--}}
{{--                <h2>{{ $title }}</h2>--}}
{{--                <div class="bread">--}}
{{--                    <ol class="breadcrumb">--}}
{{--                        <li><a href="{{ asset('/') }}">Home</a></li>--}}
{{--                        <li class="active">{{ $title }}</li>--}}
{{--                    </ol>--}}
{{--                </div><!-- end bread -->--}}
{{--            </div><!-- /.pull-right -->--}}
{{--        </div>--}}
{{--    </section><!-- end page-title -->--}}

{{--    <section class="section white">--}}
{{--        <div class="container">--}}
{{--            <div class="row">--}}
{{--                @if($blogs)--}}
{{--                    <div id="content" class="list-blog col-md-12 col-md-offset-0">--}}
{{--                        @foreach($blogs as $key=> $blog)--}}
{{--                            <div class="blog-wrapper row">--}}
{{--                                <div class="col-md-5">--}}
{{--                                    <div class="blog-image">--}}
{{--                                        <a href="{{ route('blog.detail', $blog->slug) }}" title=""><img--}}
{{--                                                src="{{ Voyager::image( $blog->image ) }}" alt="{{ $blog->title }}"--}}
{{--                                                class="img-responsive"></a>--}}
{{--                                    </div><!-- end image -->--}}
{{--                                </div>--}}
{{--                                <div class="col-md-7">--}}
{{--                                    <div class="blog-title">--}}
{{--                                        <a class="category_title" href="#" title=""></a>--}}
{{--                                        <h2><a href="{{ route('blog.detail', $blog->slug) }}"--}}
{{--                                               title="{{ $blog->title }}">{{ $blog->title }}</a></h2>--}}
{{--                                        <div class="post-meta">--}}
{{--                                            <span>--}}
{{--                                                <i class="fa fa-clock-o"></i>--}}
{{--                                                <a href="#">{{ date_format($blog->created_at,"d/m/Y H:i:s") }}</a>--}}
{{--                                            </span>--}}
{{--                                        </div>--}}
{{--                                        <p>{{ $blog->excerpt }}</p>--}}
{{--                                        <a href="{{ route('blog.detail', $blog->slug) }}" class="readmore">Đọc thêm</a>--}}
{{--                                    </div><!-- end desc -->--}}
{{--                                </div>--}}
{{--                            </div><!-- end blog-wrapper -->--}}
{{--                        @endforeach--}}
{{--                        <nav class="pagi clearfix">--}}
{{--                            {{ $blogs->links('frontend.layouts.partials.paginate') }}--}}
{{--                        </nav>--}}
{{--                    </div><!-- end content -->--}}
{{--                @endif--}}
{{--            </div><!-- end row -->--}}
{{--        </div><!-- end container -->--}}
{{--    </section><!-- end section -->--}}

    <div id="breadcrumbs" class="flexbox-container ">
        <div class="breadcrumb-inner">
            <div class="container">
                <nav class="breadcrumb" role="navigation" aria-label="breadcrumbs">
                    <a href="{{ asset('/') }}" title="general.breadcrumbs.home_link_title">Trang chủ /</a>
                    <span class="revicon-angle-right"></span>
                    <span>{{ $title }}</span>
                </nav>
            </div>
        </div>
    </div>

    <div class="blog-page">
        <div class="container">
            @if($blogs)
            <div class="row">
                @foreach($blogs as $key=> $blog)
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="blog-single-post hvr-float-shadow">
                        <!-- single post -->
                        <div class="img-holder">
                            <!-- image holder -->
                            <img src="{{ Voyager::image( $blog->thumbnail('cropped') ) }}" loading="lazy"
                                alt="{{ $blog->title }}">
                            <div class="content-holder tran3s">
                                <div class="content">
                                    <a href="{{ route('blog.detail', $blog->slug) }}"><i class="fa fa-link tran3s"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="blog-post-meta">
                            <div class="blog-title-holder">
                                <h4>{{ $blog->title }}</h4>
                            </div>
                            <p>{!!$blog->excerpt!!}</p>
                            <div class="blog-text">
                                <a href="{{ route('blog.detail', $blog->slug) }}" class="hvr-bounce-to-right">Xem thêm</a>
                            </div>
                        </div> <!-- /.blog-post-meta -->
                    </div> <!-- /single post -->
                </div>
                @endforeach
            </div> <!-- /.row -->
            <div class="page-pagination">
                <!-- Begin: Phân trang blog -->
                <div class="clear"></div>
                <div class="text-center" style="height: 159px;">
                    <div class="pagination">
                        {{ $blogs->links('frontend.layouts.partials.paginate') }}
                    </div>

                </div>
                <!-- End: Phân trang blog -->
            </div> <!-- /.page-pagination -->
            @else
            <h3>Không tìm thấy bài viết nào!</h3>
            @endif
        </div> <!-- /.container -->
    </div> <!-- /.blog-page -->


    {{-- <script>
        $(document).ready(function () {
            setTimeout(function () {
                $(".col-lg-4.col-md-4.col-sm-6.col-xs-12").matchHeight();
            }, 500)

        })
    </script> --}}
@endsection
