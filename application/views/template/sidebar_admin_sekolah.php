 <!-- Main Sidebar Container -->
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
   <!-- Brand Logo -->
   <a href="#" class="brand-link">
     <img src="<?= base_url() ?>assets22/img/favicon.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
     <span class="brand-text font-weight-light font-weight-bold"><b style="font-size:15px;">SIM BPP SSB BIREUEN</b></span>
   </a>

   <?php
    $hidden_tu = "";
    $hidden_walas = "";
    $hidden_kepsek = "";
    if ($role == "1") {
      $hidden_tu = "hidden";
    }
    if ($role == "2") {
      $hidden_walas = "hidden";
    }
    if ($role == "3") {
      $hidden_kepsek = "hidden";
    }
    ?>

   <!-- Sidebar -->
   <div class="sidebar">
     <!-- Sidebar user panel (optional) -->
     <div class="user-panel mt-3 pb-3 mb-3 d-flex">
       <div class="image">
       </div>
       <div class="info">
         <a href="#" class="d-block font-weight-bold "><?php echo $nama_user; ?></a>
       </div>
     </div>

     <!-- Sidebar Menu -->
     <nav class="mt-2 text-sm">
       <ul class="nav nav-pills nav-sidebar flex-column nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
         <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
         <li class="nav-item ">
           <a href="<?= base_url('admin'); ?>" class="nav-link">
             <i class="nav-icon fa fa-home"></i>
             <p>
               Dashboard
             </p>
           </a>
         </li>

         <li class="nav-item " <?= $hidden_tu ?> <?= $hidden_walas ?> <?= $hidden_kepsek ?>>
           <a href="<?= base_url('admin/data_rombel/'); ?>" class="nav-link">
             <i class="nav-icon fa fa-building"></i>
             <p>
               Data Kelas
             </p>
           </a>
         </li>

         <li class="nav-item " <?= $hidden_tu ?> <?= $hidden_walas ?> <?= $hidden_kepsek ?>>
           <a href="<?= base_url('admin/data_pengguna/'); ?>" class="nav-link">
             <i class="nav-icon fa fa-user"></i>
             <p>
               Data Pengguna
             </p>
           </a>
         </li>

         <li class="nav-item " <?= $hidden_walas ?> <?= $hidden_kepsek ?>>
           <a href="<?= base_url('admin/biaya/'); ?>" class="nav-link">
             <i class="nav-icon fa fa-money-check-alt"></i>
             <p>
               Biaya BPP
             </p>
           </a>
         </li>


         <li class="nav-item " <?= $hidden_walas ?>>
           <a href="<?= base_url('admin/data_bpp/'); ?>" class="nav-link">
             <i class="nav-icon fa fa-cog"></i>
             <p>
               Data BPP Setting
             </p>
           </a>
         </li>


         <li class="nav-item " <?= $hidden_walas ?>>
           <a href="<?= base_url('admin/data_bpp_view/'); ?>" class="nav-link">
             <i class="nav-icon fa fa-money-check-alt"></i>
             <p>
               Data BPP <sub class="text-warning">(Realtime)</sub>
             </p>
           </a>
         </li>

         <li class="nav-item">
           <a href="<?= base_url('admin/rekap_data/'); ?>" class="nav-link">
             <i class="nav-icon fa fa-table"></i>
             <p>
               Rekap BPP Per Kelas <sub class="text-warning">(Realtime)</sub>
             </p>
           </a>
         </li>

         <li class="nav-item" <?= $hidden_walas ?>>
           <a href="<?= base_url('admin/tunggakan/'); ?>" class="nav-link">
             <i class="nav-icon fa fa-table"></i>
             <p>
               Tunggakan Per Divisi <sub class="text-warning">(Realtime)</sub>
             </p>
           </a>
         </li>

         <li class="nav-item" <?= $hidden_walas ?>>
           <a href="<?= base_url('admin/report/'); ?>" class="nav-link">
             <i class="nav-icon fa fa-upload"></i>
             <p>
               Laporan Tunggakan
             </p>
           </a>
         </li>

         <li class="nav-item has-treeview menu-close" <?= $hidden_walas ?>>
           <a href="#" class="nav-link">
             <i class="nav-icon fas fa-user-check"></i>
             <p>
               Grafik <sub class="text-warning">(New)</sub>
               <i class="right fas fa-angle-left"></i>
             </p>
           </a>

           <ul class="nav nav-treeview">
             <li class="nav-item">
               <a href="<?= base_url('admin/grafiksd'); ?>" class="nav-link">
                 <i class="far fa fa-chart-bar nav-icon"></i>
                 <p>Grafik SD</p>
               </a>
             </li>
             <li class="nav-item">
               <a href="<?= base_url('admin/grafiksmp'); ?>" class="nav-link">
                 <i class="far fa fa-chart-bar nav-icon"></i>
                 <p>Grafik SMP</p>
               </a>
             </li>
             <li class="nav-item">
               <a href="<?= base_url('admin/grafiksma'); ?>" class="nav-link">
                 <i class="far fa fa-chart-bar nav-icon"></i>
                 <p>Grafik SMA</p>
               </a>
             </li>
           </ul>
         </li>


         <li class="nav-item">
           <a href="<?= base_url('admin/logout') ?>" class="nav-link bg-danger">
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