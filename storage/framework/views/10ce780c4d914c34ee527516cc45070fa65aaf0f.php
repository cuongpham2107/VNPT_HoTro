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

  <div style="padding-bottom: 4rem;">
    <div class="container" id="layout-page-main">
      <div class="content-page">
        <?php if($service): ?>
          <?php echo $service->body; ?>

        <?php else: ?>
          <h5>Không tìm thấy bài viết</h5>
        <?php endif; ?>
      </div>
    </div>
  </div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.default', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/tinhtoan/domains/tinhtoan.kennatech.vn/public_html/resources/views/frontend/service/detail.blade.php ENDPATH**/ ?>