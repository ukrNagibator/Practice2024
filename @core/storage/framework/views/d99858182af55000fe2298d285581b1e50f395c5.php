<?php $__env->startSection('site-title'); ?>
    <?php echo e(__('Header Area')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('style'); ?>
    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.media.css','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('media.css'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/backend/css/summernote-bs4.css')); ?>">
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="col-lg-12 col-ml-12 padding-bottom-30">
        <div class="row">
            <div class="col-lg-12">
                <div class="margin-top-40"></div>
                <?php echo $__env->make('backend/partials/message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php echo $__env->make('backend/partials/error', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <div class="col-lg-12 mt-t">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title"><?php echo e(__('Header Area')); ?></h4>
                        <form action="<?php echo e(route('admin.home.four.header.area')); ?>" method="post" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>

                            <div>
                                <div class="form-group">
                                    <label><?php echo e(__('Title')); ?></label>
                                    <input type="text" name="home_page_04_header_area_title" class="form-control"
                                           value="<?php echo e(get_static_option('home_page_04_header_area_title')); ?>">
                                </div>
                                <div class="form-group">
                                    <label><?php echo e(__('Subtitle')); ?></label>
                                    <input type="text" name="home_page_04_header_area_subtitle" class="form-control"
                                           value="<?php echo e(get_static_option('home_page_04_header_area_subtitle')); ?>">
                                </div>

                                <div class="form-group">
                                    <label><?php echo e(__('Donate Button Text')); ?></label>
                                    <input type="text" name="home_page_04_donate_button_text" class="form-control"
                                           value="<?php echo e(get_static_option('home_page_04_donate_button_text')); ?>">
                                </div>

                                <div class="form-group">
                                    <label><?php echo e(__('Donate Button URL')); ?></label>
                                    <input type="text" name="home_page_04_donate_button_text_url" class="form-control"
                                           value="<?php echo e(get_static_option('home_page_04_donate_button_text_url')); ?>">
                                    <small class="text-danger"><?php echo e(__('If you dont have any custom url then leave this field blank..!')); ?></small>
                                </div>


                                <div class="form-group">
                                    <label for="home_page_04_header_area_subtitle"><?php echo e(__('Right Side Heading ')); ?></label>
                                    <input type="text" name="home_page_04_right_side_heading" class="form-control"
                                           value="<?php echo e(get_static_option('home_page_04_right_side_heading')); ?>">
                                </div>

                                <div class="form-group">
                                    <label for="home_page_04_header_area_lists"><?php echo e(__('Right Side Donate Button Text')); ?></label>
                                    <input type="text" name="home_page_04_right_side_donate_button_text" class="form-control"
                                           value="<?php echo e(get_static_option('home_page_04_right_side_donate_button_text')); ?>">
                                </div>

                                    <div class="form-group">
                                        <label><?php echo e(__('Line Image')); ?></label>
                                        <?php $background_image_upload_btn_label = 'Upload Image'; ?>
                                        <div class="media-upload-btn-wrapper">
                                            <div class="img-wrap">
                                                <?php $home_page_04_header_area_line_image = get_static_option('home_page_04_header_area_line_image'); ?>
                                                <?php echo render_attachment_preview_for_admin($home_page_04_header_area_line_image); ?>

                                            </div>
                                            <input type="hidden" name="home_page_04_header_area_line_image"
                                                   value="<?php echo e($home_page_04_header_area_line_image); ?>">
                                            <button type="button" class="btn btn-info media_upload_form_btn"
                                                    data-btntitle="<?php echo e(__('Select Image')); ?>"
                                                    data-modaltitle="<?php echo e(__('Upload Image')); ?>"
                                                    data-imgid="<?php echo e($home_page_04_header_area_line_image); ?>"
                                                    data-toggle="modal" data-target="#media_upload_modal">
                                                <?php echo e(__($background_image_upload_btn_label)); ?>

                                            </button>
                                        </div>
                                        <small><?php echo e(__('recommended image size is 310 x 182 pixel')); ?></small>
                                    </div>


                                    <div class="form-group">
                                        <label><?php echo e(__('Background Image')); ?></label>
                                        <?php $background_image_upload_btn_label = 'Upload Image'; ?>
                                        <div class="media-upload-btn-wrapper">
                                            <div class="img-wrap">
                                                <?php $home_page_04_header_area_bg_image = get_static_option('home_page_04_header_area_bg_image'); ?>
                                                <?php echo render_attachment_preview_for_admin($home_page_04_header_area_bg_image); ?>

                                            </div>
                                            <input type="hidden" name="home_page_04_header_area_bg_image"
                                                   value="<?php echo e($home_page_04_header_area_bg_image); ?>">
                                            <button type="button" class="btn btn-info media_upload_form_btn"
                                                    data-btntitle="<?php echo e(__('Select Image')); ?>"
                                                    data-modaltitle="<?php echo e(__('Upload Image')); ?>"
                                                    data-imgid="<?php echo e($home_page_04_header_area_bg_image); ?>"
                                                    data-toggle="modal" data-target="#media_upload_modal">
                                                <?php echo e(__($background_image_upload_btn_label)); ?>

                                            </button>
                                        </div>
                                        <small><?php echo e(__('recommended image size is 1920 x 802 pixel')); ?></small>
                                    </div>

                                <button id="update" type="submit"
                                        class="btn btn-primary mt-4 pr-4 pl-4"><?php echo e(__('Update Settings')); ?></button>
                        </form>
                    </div>
                </div>

            </div>
        </div>
        <?php echo $__env->make('backend.partials.media-upload.media-upload-markup', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php $__env->stopSection(); ?>
        <?php $__env->startSection('script'); ?>
            <script src="<?php echo e(asset('assets/backend/js/dropzone.js')); ?>"></script>
            <script src="<?php echo e(asset('assets/backend/js/summernote-bs4.js')); ?>"></script>
            <?php echo $__env->make('backend.partials.media-upload.media-js', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <script>
                (function ($) {
                    "use strict";
                    $(document).ready(function () {
                        <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.btn.update','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('btn.update'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>

                    });
                })(jQuery);
            </script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('backend.admin-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\OSPanel\domains\Dmitro\@core\resources\views/backend/pages/home/home-04/header-area.blade.php ENDPATH**/ ?>