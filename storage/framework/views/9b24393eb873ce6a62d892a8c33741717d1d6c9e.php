<?php if($paginator->hasPages()): ?>
    <ul class="pagination">
        
        <?php $__currentLoopData = $elements; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $element): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            
            <?php if(is_string($element)): ?>
                <li class="hidden-phone">
                    <a class="disabled" aria-disabled="true"><span><?php echo e($element); ?></span></a>
                </li>
            <?php endif; ?>

            
            <?php if(is_array($element)): ?>
                <?php $__currentLoopData = $element; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page => $url): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php if($page == $paginator->currentPage()): ?>
                        <li class="hidden-phone current">
                            <a href=""><span class="page-numbers" aria-current="page"><?php echo e($page); ?></span></a>
                        </li>
                    <?php else: ?>
                        <li class="hidden-phone">
                            <a href="<?php echo e($url); ?>" class="page-numbers"><?php echo e($page); ?></a>
                        </li>
                    <?php endif; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>






        
    </ul>

<?php endif; ?>
<?php /**PATH /home/tinhtoan/domains/tinhtoan.kennatech.vn/public_html/resources/views/frontend/layouts/partials/paginate.blade.php ENDPATH**/ ?>