<?php $__env->startSection('page-title'); ?>
    <?php echo e(__('User Dashboard')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <section class="login-page-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">



                    <div class="user-dashboard-wrapper">
                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

                            <li class="mobile_nav">
                                <i class="fas fa-cogs"></i>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"><i class="fa fa-user mr-1"></i><?php echo e(optional(Auth::guard('web')->user())->name); ?></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link <?php if(request()->routeIs('user.home')): ?> active <?php endif; ?>" href="<?php echo e(route('user.home')); ?>"><?php echo e(__('Dashboard')); ?></a>
                            </li>

                            <?php if(!empty(get_static_option('events_module_status'))): ?>
                                <li class="nav-item">
                                    <a class="nav-link <?php if(request()->routeIs('user.home.event.booking')): ?> active <?php endif; ?>" href="<?php echo e(route('user.home.event.booking')); ?>"><?php echo e(get_static_option('events_page_name')); ?> <?php echo e(__('Booking')); ?></a>
                                </li>
                            <?php endif; ?>
                            <?php if(!empty(get_static_option('donations_module_status'))): ?>
                                <li class="nav-item">
                                    <a class="nav-link <?php if(request()->routeIs('user.home.donations')): ?> active <?php endif; ?>" href="<?php echo e(route('user.home.donations')); ?>" ><?php echo e(__('All ')); ?> <?php echo e(get_static_option('donation_page_name')); ?></a>
                                </li>
                            <?php endif; ?>

                          <?php if(Auth::guard('web')->user()->campaign_permission == 'on'): ?>
                            <li class="nav-item">
                                <a class="nav-link <?php if( request()->routeIs('user.campaign.all') || request()->routeIs('user.campaign.new') ||request()->routeIs('user.campaign.edit') || request()->routeIs('user.all.update.cause.page') || request()->routeIs('user.add.new.update.cause.page') ): ?> active <?php endif; ?> " href="<?php echo e(route('user.campaign.all')); ?>"><?php echo e(__('Campaign List')); ?></a>
                            </li>


                            <li class="nav-item">
                                <a class="nav-link  <?php if( request()->routeIs('user.campaign.log.withdraw')): ?> active <?php endif; ?>"  href="<?php echo e(route('user.campaign.log.withdraw')); ?>"><?php echo e(__('Withdraw Logs')); ?></a>
                            </li>
                          <?php endif; ?>


                            <li class="nav-item">
                                <a class="nav-link  <?php if( request()->routeIs('following.user.campaigns')): ?> active <?php endif; ?>"
                                   <?php
                                       $user = auth('web')->user();
                                       $all_follower_donations = \App\UserFollow::where(['follow_status' => 'follow','user_id'=> $user->id])->get();
                                       $data_count = count($all_follower_donations);
                                       $class_condition = request()->routeIs('following.user.campaigns') ? 'text-white' : 'text-warning';
                                   ?>
                                   href="<?php echo e(route('following.user.campaigns')); ?>"><?php echo e(__('Following User Campaigns')); ?> <span class="<?php echo e($class_condition); ?>"><?php echo e('('.$data_count.')'); ?></span>
                                </a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link <?php if(request()->routeIs('user.home.support.tickets')): ?> active <?php endif; ?>" href="<?php echo e(route('user.home.support.tickets')); ?>" ><?php echo e(__('All')); ?> <?php echo e(get_static_option('support_ticket_page_name')); ?></a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link <?php if(request()->routeIs('user.home.edit.profile')): ?> active <?php endif; ?> " href="<?php echo e(route('user.home.edit.profile')); ?>"><?php echo e(__('Edit Profile')); ?></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link <?php if(request()->routeIs('user.home.verify.update')): ?> active <?php endif; ?> " href="<?php echo e(route('user.home.verify.update')); ?>"><?php echo e(__('User Verify')); ?></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link <?php if(request()->routeIs('user.home.change.password')): ?> active <?php endif; ?> " href="<?php echo e(route('user.home.change.password')); ?>"><?php echo e(__('Change Password')); ?></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"  href="<?php echo e(route('user.logout')); ?>"
                                   onclick="event.preventDefault();document.getElementById('logout_submit_btn').dispatchEvent(new MouseEvent('click'));">
                                    <?php echo e(__('Logout')); ?>

                                </a>
                                <form id="logout-form" action="<?php echo e(route('user.logout')); ?>" method="POST" style="display: none;">
                                    <?php echo csrf_field(); ?>
                                    <button id="logout_submit_btn" type="submit"></button>
                                </form>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <?php
                                $auth_user_user_verify_status = \Illuminate\Support\Facades\Auth::guard('web')->user()->user_verify_status;
                            ?>
                            <div class="tab-pane active" role="tabpanel">
                                <?php if($auth_user_user_verify_status == 0): ?>
                                    <div class="alert alert-danger text-center"><strong><?php echo e(__('Not Verified')); ?></strong></div>
                                <?php elseif($auth_user_user_verify_status == 1): ?>
                                    <div class="alert alert-warning text-center"><strong><?php echo e(__('Verification pending for admin approval')); ?></strong></div>
                                <?php else: ?>
                                <?php endif; ?>
                                <div class="message-show margin-top-10">
                                    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.msg.success','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('msg.success'); ?>
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
                                    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.msg.error','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('msg.error'); ?>
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
                                </div>
                                <?php echo $__env->yieldContent('section'); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('scripts'); ?>
    <script>
        $(document).ready(function (){
           $('select[name="country"] option[value="<?php echo e(optional(auth()->guard('web')->user())->country); ?>"]').attr('selected',true);
           $(document).on('click','.mobile_nav',function(e){
              e.preventDefault(); 
               $(this).parent().toggleClass('show');
           });
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.frontend-page-master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\OSPanel\domains\Dmitro\@core\resources\views/frontend/user/dashboard/user-master.blade.php ENDPATH**/ ?>