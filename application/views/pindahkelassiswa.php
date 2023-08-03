<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">PINDAH KELAS</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">SIM BPP</a></li>
            <li class="breadcrumb-item active">Pindah Kelas</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->
  <div class="container">
    <section class="content">
      <div class="container-fluid">

      <div class="table-responsive">
      <table class="table table-hover table-bordered text-left table-striped">
        <thead class="fw-bold text-light" style="background-color:#6A5ACD">
          <tr>
            <th scope="col">NIS</th>
            <th scope="col">NAMA</th>
            <th scope="col">Kelas</th>
            <th scope="col"><input type="checkbox" name="checkbox33" id="cb"></th>
          </tr>
        </thead>
        <tbody class="fw-bold text-dark">
          <?php foreach ($siswa as $data) : ?>
            <tr class="nomor ">
              <td scope="row"><?php echo $data->nis; ?></td>
              <td scope="row"><?php echo $data->nama; ?></td>
              <td scope="row"><?php echo $data->rombel; ?></td>
              <form action="<?= base_url('admin/updatePindahKelas') ?>" method="post">
                <td><input type="checkbox" name="checked[]" id="checked[]" value="<?php echo $data->nis; ?>" /></td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
      <hr>
      <div class="form-group">
      <label>Pindah Ke Tingkat</label>
      <select name="kelas" class="form-control">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
      </select>
    </div>
      <div class="form-group">
        <label for="">Pindah Ke Kelas</label>
        <select name="id_rombel" class="form-control" data-size="3" data-live-search="true" data-style="btn-dark">
          <?php foreach ($kelas as $data) : ?>
            <option value="<?= $data->id_rombel ?>"><?= $data->rombel ?></option>
          <?php endforeach; ?>
        </select>
      </div>
      <button type="submit" id="btn" class="btn btn-primary font-weight-bold" style="width:100%;">PROSES NAIK KELAS</button><br><br>
      </form>
    </div>

  </div>
</div>
</div>

</div>


<script type="text/javascript">
    var checkbox = document.getElementById('cb');

    checkbox.addEventListener('change', function() {
      if (this.checked) {
        selectall();
      } else {
        bersihkan();
      }
    });

    function selectall() {
      var daftarku = document.getElementsByName("checked[]");
      var jml = daftarku.length;
      var b = 0;
      for (b = 0; b < jml; b++) {
        daftarku[b].checked = true;

      }
      clicks++;

    }

    function bersihkan() {
      var daftarku = document.getElementsByName("checked[]");
      var jml = daftarku.length;
      var b = 0;
      for (b = 0; b < jml; b++) {
        daftarku[b].checked = false;

      }
      clicks++;

    }
  </script>