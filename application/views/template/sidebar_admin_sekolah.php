 <!-- Main Sidebar Container -->
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="<?=base_url()?>assets22/img/favicon.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light font-weight-bold"><b style="font-size:15px;">SIM BPP SSB BIREUEN</b></span>
    </a>

    <?php 
      $hidden_tu="";
      $hidden_walas="";
    if ($role=="1") {
        $hidden_tu="hidden";
    }
    if ($role=="2") {
      $hidden_walas="hidden";
  }
    ?>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
        </div>
        <div class="info">
          <a href="#" class="d-block font-weight-bold"><?php echo $nama_user; ?></a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2 text-sm">
        <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">      
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
               <li class="nav-item ">
            <a href="<?=base_url('admin');?>" class="nav-link">
              <i class="nav-icon fa fa-home"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>

          <li class="nav-item " <?=$hidden_tu?> <?=$hidden_walas?>>
            <a href="<?=base_url('admin/data_pengguna/');?>" class="nav-link">
              <i class="nav-icon fa fa-user"></i>
              <p>
               Data Pengguna
              </p>
            </a>
          </li>         

          <li class="nav-item " <?=$hidden_walas?>>
            <a href="<?=base_url('admin/data_bpp/');?>" class="nav-link">
              <i class="nav-icon fa fa-money-check-alt"></i>
              <p>
               Data BPP
              </p>
            </a>
          </li>         

          <li class="nav-item ">
            <a href="<?=base_url('admin/rekap_data/');?>" class="nav-link">
              <i class="nav-icon fa fa-table"></i>
              <p>
               Rekap BPP Per Kelas
              </p>
            </a>
          </li>         

          <li class="nav-item">
            <a href="<?= base_url('admin/logout')?>" class="nav-link bg-danger">
              <i class="nav-icon fa fa-sign-out-alt"></i>
              <p>
                Logout
              </p>
            </a>
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>