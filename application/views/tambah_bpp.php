<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">TAMBAH BPP SISWA</h1>
          <hr>
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

  <form method="post" action="<?php echo base_url().'admin/insert_bpp'; ?>">
          <div class="form-group">
            <label for="">NIS</label>
            <input type="text" name="nis" class="form-control" required>
          </div>

          <div class="form-group">
            <label for="">NAMA</label>
            <input type="text" name="nama" class="form-control" required>
          </div>

          <div class="form-group">
            <label for="">KELAS</label>
            <input type="text" name="kelas" class="form-control" required>
          </div>

          <div class="form-group">
            <label for="">JENJANG</label>
            <select class="form-control " data-size="3" name="jenjang">
                <option value="SD">SD</option>
                <option value="SMP">SMP</option>
                <option value="SMA">SMA</option>
            </select>         
           </div>

          <div class="form-group">
            <label for="">STATUS</label>
            <select class="form-control " data-size="3" name="status">
                <option value="LUNAS">LUNAS</option>
                <option value="BELUM LUNAS">BELUM LUNAS</option>
            </select>         
           </div>

           <div class="form-group">
            <label for="">KETERANGAN (DIISI BULAN TUNGGAKAN)</label>
            <textarea class="form-control" name="keterangan" cols="30" rows="5" placeholder="Kosongkan Apabila Lunas"></textarea>
          </div>


           <button type="submit" class="form-control btn btn-primary font-weight-bold" id="simpan">SIMPAN DATA</button>

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