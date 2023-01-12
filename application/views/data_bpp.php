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
          <h1 class="m-0 text-dark"> <i class="nav-icon fa fa-cog"></i> SETTING DATA BPP SISWA</h1>
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
    <!-- <p align="left" <?= $hidden_kepsek ?>>
      <a class="btn btn-success font-weight-bold" href="<?= base_url('admin/tambah_bpp') ?>">TAMBAH DATA</a>
    </p> -->


    <?php if ($this->session->flashdata('msg')) : ?>
      <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <?php echo $this->session->flashdata('msg');
        $this->session->unset_userdata('msg');
        ?>

        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    <?php endif; ?>
    <?php if ($this->session->flashdata('scs')) : ?>
      <div class="alert alert-success alert-dismissible fade show" role="alert">
        <?php echo $this->session->flashdata('scs');
        $this->session->unset_userdata('scs');
        ?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
    <?php endif; ?>

    <table class="table table-hover table-sm" id="examples">
      <thead class="text-center bg-dark">
        <tr>
          <th scope="col">NO</th>
          <th scope="col" width="100px">NIS</th>
          <th scope="col" width="200px">NAMA</th>
          <th scope="col">TINGKAT</th>
          <th scope="col" width="200px">KELAS</th>
          <th scope="col">JENJANG</th>
          <th scope="col" width="200px">STATUS</th>
          <th scope="col">TANGGAL TERAKHIR BAYAR BPP</th>
          <th scope="col" class="bg-primary">JUMLAH BULAN TUNGGAKAN (OTOMATIS)</th>
          <th scope="col" class="bg-danger">JUMLAH BULAN TUNGGAKAN (MANUAL)</th>
          <th scope="col" width="200px">BPP PER BULAN</th>
          <th scope="col" width="200px" class="bg-primary">TOTAL OTOMATIS</th>
          <th scope="col" class="bg-danger" width="200px">TOTAL MANUAL</th>
          <th scope="col" width="200px">KETERANGAN</th>
          <th scope="col" <?= $hidden_kepsek ?>>AKSI</th>
        </tr>
      </thead>
      <tbody>
        <?php $i = 1;
        foreach ($bpp as $data) : ?>
          <tr class="nomor text-center">
            <th scope="row"><?php echo $i; ?></th>
            <form action="<?php echo base_url('admin/update_bpp_baru'); ?>" method="POST">
              <td> <input readonly type="text" name="nis" class="form-control text-center" value="<?= $data->nis ?>" required>
              </td>
              <td><textarea name="nama" class="form-control text-center" cols="200" rows="2"><?php echo $data->nama; ?></textarea></td>
              <td>
                <input type="text" name="kelas" class="form-control text-center" value="<?= $data->kelas ?>">
              </td>
              <td>
                <input type="hidden" name="id_rombel" class="form-control text-center" value="<?= $data->id_rombel ?>">
                <input type="text" name="rombel" class="form-control text-center" value="<?= $data->rombel ?>">
              </td>
              <td>
                <input type="text" name="jenjang" class="form-control text-center" value="<?= $data->jenjang ?>">
              </td>
              <td>
                <select class="form-control  text-center" data-size="3" name="status">
                  <option selected hidden value="<?= $data->status ?>"><?= $data->status ?></option>
                  <option value="LUNAS">LUNAS</option>
                  <option value="BELUM LUNAS">BELUM LUNAS</option>
                  <option value="-">-</option>
                </select>
              </td>
              <td><input type="date" name="tanggal_bayar" class="form-control text-center" value="<?= $data->tanggal_bayar ?>" required></td>
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
              <td class="bg-primary"><input type="text" name="jumlah_bulan_oto" class="form-control text-center" value="<?= $show_otomatis ?>" /></td>
              <!-- <td class="bg-primary"><input type="text" name="jumlah_bulan_oto" class="form-control text-center" value="<?= $show_otomatis ?>" /></td> -->
              <td class="bg-danger"><input type="text" name="jumlah_bulan_db" id="jumlah_bulan_db" class="form-control text-center" value="<?= $data->jumlah_bulan ?>"></td>
              <td><select name="bpp_per_bulan" class="form-control  text-center" id="bpp_per_bulan">
                  <option selected hidden value="<?= $data->bpp_per_bulan ?>"><?= $data->bpp_per_bulan ?></option>
                  <option value="0"> 0</option>
                  <option value="131500"> 131500</option>
                  <option value="150000"> 150000</option>
                  <option value="185000"> 185000</option>
                  <option value="225000"> 225000</option>
                  <option value="263000"> 263000</option>
                  <option value="300000"> 300000</option>
                  <option value="370000"> 370000</option>
                  <option value="430000"> 430000</option>
                </select>
              </td>

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
              <td class="bg-primary"><input type="text" name="total_oto" id="total" class="form-control text-center" value="<?= $total_show ?>"></td>
              <td class="bg-danger"><input type="text" name="total_manual" id="total_manual" class="form-control text-center" value="<?= $data->total ?>"></td>
              <td><textarea name="keterangan" class="form-control text-center" cols="200" rows="2"><?php echo $data->keterangan; ?></textarea></td>
              <td>
                <button type="submit" class="btn btn-success btn-sm font-weight-bold">UPDATE DATA</button>
            </form> <br>
            <!-- <a class="mt-1 btn btn-danger text-light font-weight-bold" onclick="total()">HITUNG TOTAL MANUAL</a><br> -->
            </td>
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

<script>
  function total() {
    var jumlah = document.getElementById("jumlah_bulan_db").value;
    var per_bulan = document.getElementById("bpp_per_bulan").value;
    document.getElementById("total_manual").value = jumlah * per_bulan;
    console.log(jumlah);
    console.log(per_bulan);

  }
</script>