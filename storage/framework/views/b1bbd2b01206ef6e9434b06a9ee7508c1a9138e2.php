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

  <!-- Content2 -->
  <style>
    .c2-about h3 {
      margin-bottom: 30px;
    }
    .c2-about p {
      margin-top: 0 !important;
    }
  </style>
  <div class="container-fluid c2-about" id="c2">
    <div class="container">
      <div class="row">      
        <div class="col-lg-12 col-sm-12 col-md-12">
          <h3 style="text-align: left;"><?php echo e($about->excerpt); ?></h3>
          <?php echo $about->body; ?>

        </div>
        
      </div>
    </div>
  </div>


 

  

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/tinhtoan/domains/tinhtoan.kennatech.vn/public_html/resources/views/frontend/aboutUs/index.blade.php ENDPATH**/ ?>