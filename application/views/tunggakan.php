<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">DATA TUNGGAKAN RALTIME</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">SIM BPP</a></li>
            <li class="breadcrumb-item active">Data Tunggakan</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->
  <div class="content">


    <table class="table table-hover" id="example">
      <thead class="text-center">
        <tr>
          <th scope="col">NO</th>
          <th scope="col">DIVISI</th>
          <th scope="col">TUNGGAKAN</th>
          <!-- <th scope="col">AKSI</th> -->
        </tr>
      </thead>
      <tbody>
          <tr class="nomor text-center">
            <th scope="row">1</th>
            <td>SD</td>
            <?php 
            $sum=0;
            foreach ($tunggakan_sd as $data) : 
              $tunggakan_sd1=$data->total;
              $sum+=$tunggakan_sd1;?>
            <?php endforeach;?>
            <td>Rp. <?=$sum;?></td>

          </tr>

          <tr class="nomor text-center">
            <th scope="row">2</th>
            <td>SMP</td>
            <?php 
            $sum1=0;
            foreach ($tunggakan_smp as $data) : 
              $tunggakan_smp1=$data->total;
              $sum1+=$tunggakan_smp1;?>
            <?php endforeach;?>
            <td>Rp. <?=$sum1;?></td>

          </tr>

          <tr class="nomor text-center">
            <th scope="row">2</th>
            <td>SMA</td>
            <?php 
            $sum2=0;
            foreach ($tunggakan_sma as $data) : 
              $tunggakan_sma1=$data->total;
              $sum2+=$tunggakan_sma1;?>
            <?php endforeach;?>
            <td>Rp. <?=$sum2;?></td>

          </tr>
      </tbody>
    </table>
  </div>
</div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Kuota</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post" action="<?= base_url('home') . '/tambahkuota'; ?>" data-baseurl="<?= base_url('home'); ?>">
          <div class="form-group">
            <label for="">Nama Sekolah</label>
            <select class="form-control selectpicker" data-size="3" name="id_sekolah" id="id_sekolah" data-style="btn-info" data-live-search="true">
              <?php foreach ($kuota2 as $data) : ?>
                <option value="<?php echo $data->id_sekolah; ?>" data-type="<?=$data->status_sekolah;?>"><?php echo $data->nama_sekolah; ?></option>
              <?php endforeach; ?>
            </select>
          </div>
          <div class="form-group">
            <label for="">Total Kuota Penerimaan</label>
            <input type="text" name="total" id="total" class="form-control" required>
          </div>
          <div class="form-group">
            <label for="">Kuota Zonasi</label>
            <input type="text" name="zonasi" id="zonasi" class="form-control negeri" required>
          </div>
          <div class="form-group">
            <label for="">Kuota Afirmasi</label>
            <input type="text" name="afirmasi" id="afirmasi" class="form-control negeri" required>
          </div>
          <div class="form-group">
            <label for="">Kuota Pindahan Orang tua</label>
            <input type="text" name="pindahan" id="pindahan" class="form-control negeri" required>
          </div>
          <div class="form-group">
            <label for="">Kuota Prestasi</label>
            <input type="text" name="prestasi" id="prestasi" class="form-control negeri" required>
          </div>
          <div class="form-group swasta" style="display: none;">
            <label for="">Kuota Umum</label>
            <input type="text" name="umum" id="umum" value="0" class="form-control" required>
          </div>
          <input type="hidden" name="kuota_in" id="kuota_in" value="0">
          <button type="button" class="btn btn-primary" id="simpan">Simpan</button>
      </div>
      </form>
    </div>
  </div>
</div>
</div>