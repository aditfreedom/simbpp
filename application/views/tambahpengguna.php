<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">TAMBAH PENGGUNA</h1>
          <hr>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">SIM BPP</a></li>
            <li class="breadcrumb-item active">Tambah Pengguna</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->
  <div class="content">

  <form method="post" action="<?php echo base_url().'admin/insert_pengguna'; ?>">
          <div class="form-group">
            <label for="">NAMA</label>
            <input type="text" name="nama_user" class="form-control" required>
          </div>

          <div class="form-group">
              <label for="">WALI KELAS</label>
              <select class="form-control selectpicker" data-style="btn-primary" data-size="3" name="id_rombel" id="kelas" data-live-search="true" required>
                  <option value="0">BUKAN WALI KELAS</option>
                  <?php foreach ($rombel as $data) : ?>
                    <option value="<?=$data->id_rombel?>"><?=$data->rombel?></option>
                    <?php endforeach; ?>
              </select>
          </div>

          <div class="form-group">
            <label for="">USERNAME</label>
            <input type="text" name="username" class="form-control" required>
          </div>

          <div class="form-group">
            <label for="">PASSWORD</label>
            <input type="text" name="password" class="form-control" required>
          </div>

          <div class="form-group">
              <label for="">ROLE</label>
              <select class="form-control selectpicker" data-style="btn-primary" data-size="3" name="role" id="kelas" data-live-search="true" required>
                  <option value="0">ADMIN</option>
                  <option value="1">TATA USAHA</option>
                  <option value="2">WALI KELAS</option>
                  <option value="3">KEPSEK</option>
              </select>
          </div>



           <button type="submit" class="form-control btn btn-info font-weight-bold" id="simpan">SIMPAN DATA</button>

    </form>


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
   
    </div>
  </div>
</div>
</div>

<script>
function total() {
  var jumlah = document.getElementById("jumlah").value;
  var per_bulan = document.getElementById("per_bulan").value;
  document.getElementById("total").value = jumlah * per_bulan;
}
</script>