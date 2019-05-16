<!-- right side column. contains the logo and sidebar -->
<aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">




        <!-- Sidebar Menu -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">منو دسترسی به امکانات نرم افزار</li>/
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="<?php echo base_url('Dashbord')?>"><i class="fa fa-dashboard"></i> <span>داشبــرد</span></a></li>
            <li><a href="<?php echo base_url('Film/movie')?>"><i class="fa fa-plus"></i> <span>فیـلم</span></a></li>
            <li><a href="<?php echo base_url('Series/series')?>"><i class="fa fa-plus"></i> <span>ســریال</span></a></li>


            <li><a href="<?php echo base_url('Trailer/trailer')?>"><i class="fa fa-plus"></i> <span>تریلر</span></a></li>


            <li><a href="<?php echo base_url('Genre/genre')?>"><i class="fa fa-plus"></i> <span>ژانــر</span></a></li>



            <li><a href="<?php echo base_url('Director/director')?>"><i class="fa fa-plus"></i> <span>کارگردانان</span></a></li>



            <li><a href="<?php echo base_url('Stars/stars')?>"><i class="fa fa-plus"></i> <span>ستــارگان</span></a></li>



            <li><a href="<?php echo base_url('Users/users')?>"><i class="fa fa-image"></i> <span>کاربــران</span></a></li>


            <li><a href="<?php echo base_url('Slider/slider')?>"><i class="fa fa-image"></i> <span>اسلایــدر</span></a></li>

            <li><a href="<?php echo base_url('Request/request')?>"><i class="fa fa-tasks"></i><span>درخــواست ها</span>
                   <?php
                   $count_request = $this->db->query("SELECT request_state_id FROM mvi_request WHERE request_state_id = 1");
                   if ($count_request !== "0") { ?>

                    <span class="pull-left-container">
                        <small class="label pull-left bg-green"><?php echo $count_request->num_rows(); ?></small>
                    </span>

                    <?php } ?>

                </a></li>

            <li><a href="<?php echo base_url('Comments')?>">
                    <i class="fa fa-envelope"></i> <span>نظرات</span>
                    <span class="pull-left-container">
              <small class="label pull-left bg-yellow">۱۲</small>
            </span>
                </a>
            </li>



            <li><a href="#"><i class="fa fa-link"></i> <span>پشتیــبانی</span>
                    <span class="pull-left-container">
                        <small class="label pull-left bg-red">۳</small>
                    </span>
                </a></li>
            <li><a href="#"><i class="fa fa-image"></i> <span>تنظیــمات</span></a></li>
            <li><a href="<?php echo base_url('Auth/logout')?>"><i class="fa fa-image"></i> <span>خــروج</span></a></li>



        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>