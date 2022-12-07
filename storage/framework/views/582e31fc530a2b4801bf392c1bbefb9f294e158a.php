<?php $__env->startSection('content'); ?>
    <div id="breadcrumbs" class="flexbox-container ">
        <div class="breadcrumb-inner">
            <div class="container">
                <nav class="breadcrumb" role="navigation" aria-label="breadcrumbs">
                    <a href="<?php echo e(asset('/')); ?>" title="general.breadcrumbs.home_link_title">Trang chủ /</a>
                    <span class="revicon-angle-right"></span>
                    <a href="<?php echo e(route('blogs')); ?>" title="">Bài viết</a>
                    <span class="revicon-angle-right"></span>/ 
                    <span><?php echo e($title); ?></span>
                </nav>
            </div>
        </div>
    </div>

    <!-- Blog Post __________________________ -->
    <section class="blog_container blog_container_deatils_leftbar" id="blog-post">
        <div class="container">
            <div class="row">
                <!-- .blog-content -->
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 blog-content">
                    <!-- article -->
                    <article>
                        <div class="post-meta clear-fix">
                            <div class="post-date">
                                <ul>
                                    <li><span><i class="fa fa-calendar"
                                                 aria-hidden="true"></i></span> <?php echo e(date_format($blog->created_at,"d/m/Y H:i:s")); ?>

                                    </li>
                                    
                                </ul>
                            </div>
                            <div class="post-title">
                                <h2 title="CÁCH LÀM SẠCH SÀN ĐÁ CỰC KỲ HIỆU QUẢ"><?php echo e($title); ?></h2>
                            </div>
                        </div>
                    <?php echo $blog->body; ?>

                    <!-- .shear-area -->
                    </article> <!-- /article -->
                    
                    <div class="addthis_inline_share_toolbox_0nzc"></div>

                </div> <!-- /.blog-content -->
                <!-- ======================== Blog Sidebar ==================== -->
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 blog_content_left blog_sidebar">


                    <div class="recent_blog">
                        <h4>Bài đăng mới</h4>
                        <?php if($recentPost): ?>
                            <?php $__currentLoopData = $recentPost; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$rep): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="recent_blog_single_item clear-fix">
                            <div class="img-content float-left">
                                <img style="width: 100%;" loading="lazy"
                                    src="<?php echo e(Voyager::image( $rep->thumbnail('cropped'))); ?>"
                                    alt="<?php echo e($rep->title); ?>">
                            </div>
                            <div class="text float-left">
                                <a href="<?php echo e(route('blog.detail', $rep->slug)); ?>"><?php echo e($rep->title); ?></a>
                                <p><?php echo e(date_format($rep->created_at,"d/m/Y")); ?></p>
                            </div>
                        </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                    </div> <!-- end recent_blog -->

                    <div class="recent_blog">
                        <h4>Danh mục</h4>
                        <?php if($categories): ?>
                            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <div class="recent_blog_single_item clear-fix">
                                    <div class="text float-left">
                                        <a href="<?php echo e(route('category', $category->id)); ?>"> <?php echo e($category->name); ?> <span>(<?php echo e($category->posts_count); ?>)</span></a>
                                    </div>
                                </div>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php endif; ?>
                    </div> <!-- end recent_blog -->

                </div> <!-- End blog_sidebar -->
            </div>
        </div>
    </section>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/tinhtoan/domains/tinhtoan.kennatech.vn/public_html/resources/views/frontend/blog/blogDetail.blade.php ENDPATH**/ ?>