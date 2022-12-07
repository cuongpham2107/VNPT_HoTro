<?php
  // $menuFields= App\Staticdata::where(['type' => 'linh-vuc-hoat-dong', 'status' => 'ACTIVE'])->get();

  $menu = menu('Home menu', '_json');
?>

<!-- HEADER izi -->
<div class="header header1">
  <!-- TOP BAR -->
  <div class="container" style="padding: .5rem 2rem;">

    <div>
      <ul class="phone">
        <li><span class="fa fa-envelope"></span> Mail: <?php echo e(setting('site.email')); ?></li>
        <li><span class="fa fa-phone"></span><a href="tel:<?php echo e(setting('site.phone')); ?>" style="color: #fff !important;"><?php echo e(setting('site.phone')); ?></a> - <a href="tel:<?php echo e(setting('site.phone2')); ?>" style="color: #fff !important;"><?php echo e(setting('site.phone2')); ?></a></li>
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
            <a href="<?php echo e(asset('/')); ?>" class="mobile-logo" style="overflow: hidden;">
              <img src="<?php echo e(\TCG\Voyager\Facades\Voyager::image(setting('site.logo'))); ?>" alt="<?php echo e(setting('site.title')); ?>" style="filter: brightness(0) invert(1); height: 100%; width: auto" loading="lazy"/>
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
            <a href="<?php echo e(asset('/')); ?>" class="logo"><img src="<?php echo e(\TCG\Voyager\Facades\Voyager::image(setting('site.logo'))); ?>" alt="<?php echo e(setting('site.title')); ?>" loading="lazy"/></a>

            

            <ul class="nav navbar-nav navbar-right">
              <?php $__currentLoopData = $menu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php if(count($item->children) > 0): ?>
                  <li class="dropdown">
                    <a href="<?php echo e(asset($item->url)); ?>" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo e($item->title); ?><span class="caret"></span></a>

                    <ul class="dropdown-menu">
                      <?php $__currentLoopData = $item->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $child): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <li>
                          <a href="<?php echo e(asset($child->url)); ?>"><?php echo e($child->title); ?></a>
                        </li>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>
                  </li>
                <?php else: ?>
                  <li class="<?php if($item->url == '/'.Route::current()->uri): ?> active <?php endif; ?>">
                    <a href="<?php echo e(asset($item->url)); ?>"><?php echo e($item->title); ?></a>
                  </li> 
                <?php endif; ?>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              
            </ul>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>


    </div> <!-- /.container -->
  </div> <!-- /.main-menu -->
</header><?php /**PATH /home/tinhtoan/domains/tinhtoan.kennatech.vn/public_html/resources/views/frontend/layouts/partials/header.blade.php ENDPATH**/ ?>