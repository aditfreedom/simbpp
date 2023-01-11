<?php
  $role=$this->session->userdata('role');
  $hidden_kepsek="";
  if ($role=="3") {
    $hidden_kepsek="hidden";
  }
  ?>
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">DATA BPP SISWA</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">SIM BPP</a></li>
            <li class="breadcrumb-item active">Data BPP</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->
  <div class="content">
    <p align="left" <?=$hidden_kepsek?>>
     <a class="btn btn-success font-weight-bold" href="<?=base_url('admin/tambah_bpp')?>">TAMBAH DATA</a>
    </p>

    <table class="table table-hover" id="example">
      <thead class="text-center">
        <tr>
          <th scope="col">NO</th>
          <th scope="col">NIS</th>
          <th scope="col">NAMA</th>
          <th scope="col">TINGKAT</th>
          <th scope="col">KELAS</th>
          <th scope="col">JENJANG</th>
          <th scope="col">STATUS</th>
          <th scope="col">JUMLAH BULAN TUNGGAKAN</th>
          <th scope="col">BPP PER BULAN</th>
          <th scope="col">TOTAL</th>
          <th scope="col">KETERANGAN</th>
          <th scope="col" <?=$hidden_kepsek?>>AKSI</th>
        </tr>
      </thead>
      <tbody>
        <?php $i = 1;
        foreach ($bpp as $data) : ?>
          <tr class="nomor text-center">
            <th scope="row"><?php echo $i; ?></th>
            <td><?php echo $data->nis; ?></td>
            <td><?php echo $data->nama; ?></td>
            <td><?php echo $data->kelas; ?></td>
            <td><?php echo $data->rombel; ?></td>  
            <td><?php echo $data->jenjang; ?></td>
            <td><?php echo $data->status; ?></td>
            <td><?php echo $data->jumlah_bulan; ?></td>
            <td><?php echo $data->bpp_per_bulan; ?></td>
            <td><?php echo $data->total; ?></td>
            <td><?php echo $data->keterangan; ?></td>
            <td <?=$hidden_kepsek?>><?php echo anchor('admin/edit_bpp/'.$data->nis,'<div class="btn btn-primary btn-sm text-bold">EDIT DATA</div>')?> <br>
            <?php echo anchor('admin/hapus_bpp/'.$data->nis,'<div class="btn btn-danger btn-sm text-bold">HAPUS DATA</div>')?><br>
            <a class="btn btn-success btn-sm text-bold" target="_blank" href="<?=base_url('admin/cariuser2/'.$data->nis)?>">CETAK KARTU UTS</a>
            </td>
          </tr>
          <?php $i++; ?>
        <?php endforeach; ?>
        <!-- <tr class="nomor text-center">
        <?php 
            $sum=0;
            foreach ($tunggakan_sd as $data) : 
              $tunggakan_sd1=$data->total;
              $sum+=$tunggakan_sd1;?>
            <?php endforeach;?>
          <th scope="row"><?=$i?></th>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>TOTAL TUNGGAKAN SD</td>
            <td class="font-weight-bold">Rp. <?=number_format($sum);?></td>
            <td></td>
            <td></td>
          </tr>

          <tr class="nomor text-center">
          <?php 
            $sum1=0;
            foreach ($tunggakan_smp as $data) : 
              $tunggakan_smp1=$data->total;
              $sum1+=$tunggakan_smp1;?>
            <?php endforeach;?>
          <th scope="row"><?=$i?></th>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>TOTAL TUNGGAKAN SMP</td>
            <td class="font-weight-bold">Rp. <?=number_format($sum1);?></td>
            <td></td>
            <td></td>
          </tr>

          <tr class="nomor text-center">
         <?php 
            $sum2=0;
            foreach ($tunggakan_sma as $data) : 
              $tunggakan_sma1=$data->total;
              $sum2+=$tunggakan_sma1;?>
            <?php endforeach;?>
          <th scope="row"><?=$i?></th>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>TOTAL TUNGGAKAN SMA</td>
            <td class="font-weight-bold">Rp. <?=number_format($sum2);?></td>
            <td></td>
            <td></td>
          </tr> -->
  
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