<?php
$role = $this->session->userdata('role');
$hidden_kepsek = "";
if ($role == "3") {
  $hidden_kepsek = "hidden";
}
?>

<?php
function tanggal_indo($tanggal)
{
  $tgl = explode('-', $tanggal);
  $bln['01'] = 'Januari';
  $bln['02'] = 'Februari';
  $bln['03'] = 'Maret';
  $bln['04'] = 'April';
  $bln['05'] = 'Mei';
  $bln['06'] = 'Juni';
  $bln['07'] = 'Juli';
  $bln['08'] = 'Agustus';
  $bln['09'] = 'September';
  $bln['10'] = 'Oktober';
  $bln['11'] = 'November';
  $bln['12'] = 'Desember';
  if ($tgl[0] == '0000') {
    return $tanggal;
  } else {
    return $tgl[2] . ' ' . $bln[$tgl[1]] . ' ' . $tgl[0];
  }
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
    <p align="left" <?= $hidden_kepsek ?>>
      <a class="btn btn-success font-weight-bold" href="<?= base_url('admin/tambah_bpp') ?>">TAMBAH DATA</a>
    </p>

    <table class="table table-hover table-sm" id="example">
      <thead class="text-center bg-dark">
        <tr>
          <th scope="col">NO</th>
          <th scope="col">NIS</th>
          <th scope="col">NAMA</th>
          <th scope="col">TINGKAT</th>
          <th scope="col">KELAS</th>
          <th scope="col">JENJANG</th>
          <th scope="col">STATUS</th>
          <th scope="col">TANGGAL TERAKHIR BAYAR BPP</th>
          <th scope="col">JUMLAH BULAN TUNGGAKAN (OTOMATIS)</th>
          <th scope="col">JUMLAH BULAN TUNGGAKAN (MANUAL)</th>
          <th scope="col">BPP PER BULAN</th>
          <th scope="col">TOTAL OTOMATIS</th>
          <th scope="col">TOTAL MANUAL</th>
          <th scope="col">KETERANGAN</th>
          <th scope="col" <?= $hidden_kepsek ?>>AKSI</th>
        </tr>
      </thead>
      <tbody>
        <?php $i = 1;
        foreach ($bpp as $data) : ?>
          <tr class="nomor text-center">
            <th scope="row"><?php echo $i; ?></th>
            <td><?= $data->nis ?></td>
            <td><?= $data->nama ?></td>
            <td><?= $data->kelas ?></td>
            <td><?= $data->rombel ?></td>
            <td><?= $data->jenjang ?></td>
            <td><?= $data->status ?></td>
            <td><?= tanggal_indo($data->tanggal_bayar) ?></td>
            <?php
            $date1 = $data->tanggal_bayar;
            // $date2 = "2023-11-20";
            $date2 = date("Y-m-d");

            $diff = abs(strtotime($date2) - strtotime($date1));

            $years = floor($diff / (365 * 60 * 60 * 24));
            $months = floor(($diff - $years * 365 * 60 * 60 * 24) / (30 * 60 * 60 * 24));
            $days = floor(($diff - $years * 365 * 60 * 60 * 24 - $months * 30 * 60 * 60 * 24) / (60 * 60 * 24));


            ///ambil data jumlah bulan di db untuk ditampilkan bulan otomatis atau tidak
            $jumlah_bulan_db = $data->jumlah_bulan;
            $show_otomatis = "";
            if ($jumlah_bulan_db == null) {
              $show_otomatis = "$months";
            } else {
              $show_otomatis = "";
            }
            ?>
            <td><?= $show_otomatis ?></td>
            <td><?= $data->jumlah_bulan ?></td>
            <td><?= $data->bpp_per_bulan ?></td>
            <?php
            $biaya = $data->bpp_per_bulan;
            $total = $months * $biaya;

            $total_db = $data->total;
            $jumlah_bulan_db = $data->jumlah_bulan;
            $total_show = "";

            if ($jumlah_bulan_db == null) {
              $total_show = "$total";
            } else {
              $total_show = "";
            }
            ?>
            <td><?= $total_show ?></td>
            <td><?= $data->total ?></td>
            <td><?= $data->keterangan ?></td>
            <td <?= $hidden_kepsek ?>>
              <!-- <?php echo anchor('admin/edit_bpp/' . $data->nis, '<div class="btn btn-primary btn-sm text-bold">EDIT DATA</div>') ?> <br> -->
              <?php echo anchor('admin/hapus_bpp/' . $data->nis, '<div class="btn btn-danger btn-sm text-bold">HAPUS DATA</div>') ?><br>
              <!-- <a class="btn btn-success btn-sm text-bold" target="_blank" href="<?= base_url('admin/cariuser2/' . $data->nis) ?>">CETAK KARTU UTS</a> -->
            </td>
          </tr>
          <?php $i++; ?>
        <?php endforeach; ?>
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
                <option value="<?php echo $data->id_sekolah; ?>" data-type="<?= $data->status_sekolah; ?>"><?php echo $data->nama_sekolah; ?></option>
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