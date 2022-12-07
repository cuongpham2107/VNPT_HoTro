<?php
    $postfooter= \TCG\Voyager\Models\Post::limit(2)->get();
?>

<!-- Footer ______________________________ -->
<footer>
  <div class="opacity">
    <div class="top-footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="footer-logo float-left">
              <a href="<?php echo e(asset('/')); ?>">
                <img src="<?php echo e(\TCG\Voyager\Facades\Voyager::image(setting('site.logo'))); ?>" width="100" alt="logo-footer" loading="lazy">
              </a>
              
              <div class="footer-address float-left footer-link">
                <h4>THÔNG TIN LIÊN HỆ</h4>
                <ul>
                  <li><span class="fa fa-building"></span>
                    <p><?php echo e(setting('site.description')); ?></p>
                  </li>
                  <li><span class="fa fa-home"></span>
                    <p><?php echo e(setting('site.address')); ?></p>
                  </li>
                  <li><span class="fa fa-phone"></span>
                    <a href="rel:<?php echo e(setting('site.phone')); ?>"><?php echo e(setting('site.phone')); ?></a> -
                    <a href="rel:<?php echo e(setting('site.phone2')); ?>"><?php echo e(setting('site.phone2')); ?></a>
                  </li>
                  <li><span class="fa fa-envelope"></span>
                    <a href="mailto: <?php echo e(setting('site.email')); ?>"><?php echo e(setting('site.email')); ?></a>
                  </li>
                </ul>
              </div>

            </div> <!-- /.footer-logo -->
          </div>
          
          <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="footer-address footer-link float-left">
              <h4>ĐĂNG KÍ NHẬN THÔNG TIN KHUYẾN MÃI</h4>
              <p>Cập nhật thông tin khuyến mại nhanh nhất và hưởng quyền lợi giảm giá riêng biệt</p>
              <form method="post" class="mailchimp-form" action="/feedback">
                <?php echo csrf_field(); ?>
                <input name='title' type='hidden' value='contact'>
                <input name='name' type='hidden' value='anonymous'>
                <input name='phone' type='hidden' value='anonymous'>
                <input name='content' type='hidden' value='anonymous'>
                <div class="input-group">
                  <input class="form-control news" type="email" placeholder="Nhập Email" name="email"
                    id="Email" value="" required />
                  <div>
                    <input class="btn btn-default" type="submit" name="submit" value="GỬI" />
                  </div> 
                </div><!-- /input-group -->
                <ul class="social-links">
                  <li><a href="<?php echo e(setting('social-network.facebook')); ?>" title="Facebook"><i
                        class="fa fa-facebook"></i></a></li>
                  <li><a href="<?php echo e(setting('social-network.google-plus')); ?>" title="Google Plus"><i class="fa fa-google-plus"></i></a>
                  </li>
                  <li><a href="<?php echo e(setting('social-network.linkedin')); ?>" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                </ul>
              </form>
            </div>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-4">
            <div class="footer-link">
              <h4>ĐỊA CHỈ LIÊN HỆ</h4>
              <div id="map">
                <?php echo setting('site.map'); ?>

              </div>
            </div>
          </div>

        </div>
      </div> <!-- /.conatiner -->
    </div> <!-- /.top-footer -->
    <div class="bottom-footer clear-fix">
      <div class="container">
        
        <div class="col-12">
          <div class="text-center" style="color: #fff">Copyright © <h1 style="font-size: 16px; font-weight: normal; display: inline;"><?php echo e(setting('site.title')); ?></h1>. All Rights Reserved.</div>
        </div>
      </div>
    </div> <!-- /.bottom-footer -->
  </div> <!-- /.opacity -->
</footer>
<button class="scroll-top tran3s p-color">
  <i class="fa fa-angle-double-up" aria-hidden="true"></i>
</button>


<?php if(\Session::has('success')): ?>
  <script type="text/javascript">
    window.alert("<?php echo \Session::get('success'); ?>")
  </script>
<?php endif; ?>
<!-- END OF FOOTER --><?php /**PATH /home/tinhtoan/domains/tinhtoan.kennatech.vn/public_html/resources/views/frontend/layouts/partials/footer.blade.php ENDPATH**/ ?>