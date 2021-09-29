<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0 text-dark">REKAP BULANAN</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Monitoring</a></li>
                        <li class="breadcrumb-item active">Rekap DT</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
    <div class="content">
       
    <div class="container">
            <!-- <p align="left">
            <a href="<?= base_url('home/tambah_dt'); ?>" class="btn btn-success">
            <i class="fa fa-plus"></i> Tambah Data</a>
            </p> -->

        <table class="table table-hover" id="example">
            <thead class="text-center">
                <tr>
                    <th scope="col">NO</th>
                    <th scope="col">NAMA SISWA</th>
                    <th scope="col">BULAN</th>
                    <th scope="col">TAHUN</th>
                    <th scope="col">AKSI</th>
                </tr>
            </thead>
            <tbody>
                <?php $i = 1;
                foreach ($rekap as $data) : ?>
                    <tr class="nomor text-center">
                        <th scope="row"><?php echo $i; ?></th>
                        <td><?php echo $data->nama; ?></a></td>
                        <td><?php echo $data->bulan; ?></td>
                        <td><?php echo $data->tahun; ?></td>
                        <td><?php echo anchor('admin/tampil_grafik?bulan='.$data->bulan.'&tahun='.$data->tahun.'&id='.$data->id_user.'&nama='.$data->nama,'<div class="font-weight-bold btn btn-primary btn-sm">LIHAT GRAFIK</div>')?></td>
                    </tr>
                    <?php $i++; ?>
                <?php endforeach; ?>
            </tbody>
        </table>
        </div>

    </div>
</div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Tambah Data</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="post" action="<?php echo base_url('home/tambahprogram'); ?>">

                    <div class="form-group">
                    <label for="">Kode Program</label>
                    <input type="text" name="kode_program" class="form-control" maxlength="100">
                    </div>

                    <div class="form-group">
                    <label for="">Nama Program</label>
                    <input type="text" name="nama_program" class="form-control" maxlength="100">
                    </div>

                    <div class="form-group">
                    <button type="submit" class="btn text-bold btn-primary form-control" style="height:40px;">SIMPAN DATA</button>                    
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
</div>