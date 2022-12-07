<?php $__env->startSection('content'); ?>


























































    <div id="breadcrumbs" class="flexbox-container ">
        <div class="breadcrumb-inner">
            <div class="container">
                <nav class="breadcrumb" role="navigation" aria-label="breadcrumbs">
                    <a href="<?php echo e(asset('/')); ?>" title="general.breadcrumbs.home_link_title">Trang chủ /</a>
                    <span class="revicon-angle-right"></span>
                    <span><?php echo e($title); ?></span>
                </nav>
            </div>
        </div>
    </div>

    <div class="blog-page">
        <div class="container">
            <?php if($blogs): ?>
            <div class="row">
                <?php $__currentLoopData = $blogs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=> $blog): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                    <div class="blog-single-post hvr-float-shadow">
                        <!-- single post -->
                        <div class="img-holder">
                            <!-- image holder -->
                            <img src="<?php echo e(Voyager::image( $blog->thumbnail('cropped') )); ?>" loading="lazy"
                                alt="<?php echo e($blog->title); ?>">
                            <div class="content-holder tran3s">
                                <div class="content">
                                    <a href="<?php echo e(route('blog.detail', $blog->slug)); ?>"><i class="fa fa-link tran3s"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="blog-post-meta">
                            <div class="blog-title-holder">
                                <h4><?php echo e($blog->title); ?></h4>
                            </div>
                            <p><?php echo $blog->excerpt; ?></p>
                            <div class="blog-text">
                                <a href="<?php echo e(route('blog.detail', $blog->slug)); ?>" class="hvr-bounce-to-right">Xem thêm</a>
                            </div>
                        </div> <!-- /.blog-post-meta -->
                    </div> <!-- /single post -->
                </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div> <!-- /.row -->
            <div class="page-pagination">
                <!-- Begin: Phân trang blog -->
                <div class="clear"></div>
                <div class="text-center" style="height: 159px;">
                    <div class="pagination">
                        <?php echo e($blogs->links('frontend.layouts.partials.paginate')); ?>

                    </div>

                </div>
                <!-- End: Phân trang blog -->
            </div> <!-- /.page-pagination -->
            <?php else: ?>
            <h3>Không tìm thấy bài viết nào!</h3>
            <?php endif; ?>
        </div> <!-- /.container -->
    </div> <!-- /.blog-page -->


    
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/tinhtoan/domains/tinhtoan.kennatech.vn/public_html/resources/views/frontend/blog/index.blade.php ENDPATH**/ ?>