<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
	function __construct(){
        parent::__construct();
        $datauser = $this->session->userdata('login'); 
		if ($datauser!= "Berhasil") {
            $this->session->sess_destroy();
			redirect(base_url('hal/login'));
		}
	}

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->model('M_ppdb');
		$sess_data = $this->session->userdata();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('dashboard');
		$this->load->view('template/footer');


	}

	// public function registrasi()
	// {
	// 	$this->load->view('registrasi');
	// }

	// public function login()
	// {
	// 	$this->load->model('M_ppdb');
	// 	$this->load->view('login');	
	// }

	// public function dashboard()
	// {
	// 	$this->load->view('template/header');
	// 	$this->load->view('template/sidebar');
	// 	$this->load->view('dashboard');
	// 	$this->load->view('template/footer');
	// }
	
	public function kuota()
	{
		$data['kuota'] = $this->M_ppdb->tampil_data_kuota()->result();
		$sess_data = $this->session->userdata();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('kuota',$data);
		$this->load->view('template/footer');
	}

	public function data_bpp()
	{
		$data['bpp'] = $this->M_ppdb->tampil_data_bpp()->result();
		$data['tunggakan_sd'] = $this->M_ppdb->tampil_data_tunggakan_sd()->result();
		$data['tunggakan_smp'] = $this->M_ppdb->tampil_data_tunggakan_smp()->result();
		$data['tunggakan_sma'] = $this->M_ppdb->tampil_data_tunggakan_sma()->result();
		$data['biaya'] = $this->M_ppdb->tampil_biaya()->result();
		$data['rombel'] = $this->M_ppdb->tampil_rombel()->result();
		$sess_data = $this->session->userdata();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('data_bpp',$data);
		$this->load->view('template/footer');
	}

	public function data_bpp_view()
	{
		$data['bpp'] = $this->M_ppdb->tampil_data_bpp()->result();
		$data['tunggakan_sd'] = $this->M_ppdb->tampil_data_tunggakan_sd()->result();
		$data['tunggakan_smp'] = $this->M_ppdb->tampil_data_tunggakan_smp()->result();
		$data['tunggakan_sma'] = $this->M_ppdb->tampil_data_tunggakan_sma()->result();
		$data['biaya'] = $this->M_ppdb->tampil_biaya()->result();
		$data['rombel'] = $this->M_ppdb->tampil_rombel()->result();
		$sess_data = $this->session->userdata();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah', $sess_data);
		$this->load->view('data_bpp_view', $data);
		$this->load->view('template/footer');
	}




	public function insert_bpp()
	{
		$bulan1 = $this->input->post('bulan1');
		$bulan2 = $this->input->post('bulan2');
		$tahun1 = $this->input->post('tahun1');
		$tahun2 = $this->input->post('tahun2');
		$keterangan_tambahan = $this->input->post('keterangan_tambahan');
		
		if ($bulan1=="" && $tahun1=="") {
			$setrip="";
		}elseif($bulan2=="" && $tahun2==""){
			$setrip="";
		}
		else {
			$setrip="-";
		}
		$keterangan=$bulan1." ".$tahun1." ".$setrip." ".$bulan2." ".$tahun2."\n".$keterangan_tambahan;

			$data = array(
			'nis' => $this->input->post('nis'),
			'nama' => $this->input->post('nama'),
			'kelas' => $this->input->post('kelas'),
			'id_rombel' => $this->input->post('id_rombel'),
			'jenjang' => $this->input->post('jenjang'),
			'status' => $this->input->post('status'),
			'keterangan' => $keterangan,
			'jumlah_bulan' => $this->input->post('jumlah_bulan'),
			'bpp_per_bulan' => $this->input->post('bpp_per_bulan'),
			'total' => $this->input->post('total')
		);
	


		$cek_nis = $this->M_ppdb->cek_nis($this->input->post('nis'))->num_rows();

		if ($cek_nis>0) {
			$this->load->view('gagal_nis');
		}else{
			$this->M_ppdb->tambah_data($data,'data');
			$this->load->view('berhasil_bpp');
		}

	}

	public function update_bpp(){


		$bulan1 = $this->input->post('bulan1');
		$bulan2 = $this->input->post('bulan2');
		$tahun1 = $this->input->post('tahun1');
		$tahun2 = $this->input->post('tahun2');
		$keterangan_tambahan = $this->input->post('keterangan_tambahan');
		
		if ($bulan1=="" && $tahun1=="") {
			$setrip="";
		}elseif($bulan2=="" && $tahun2==""){
			$setrip="";
		}
		else {
			$setrip="-";
		}
		$keterangan=$bulan1." ".$tahun1." ".$setrip." ".$bulan2." ".$tahun2."\n".$keterangan_tambahan;

		$data = array(
			'nama' => $this->input->post('nama'),
			'kelas' => $this->input->post('kelas'),
			'jenjang' => $this->input->post('jenjang'),
			'kelas' => $this->input->post('kelas'),
			'id_rombel' => $this->input->post('id_rombel'),
			'status' => $this->input->post('status'),
			'keterangan' => $keterangan,
			'jumlah_bulan' => $this->input->post('jumlah_bulan'),
			'bpp_per_bulan' => $this->input->post('bpp_per_bulan'),
			'total' => $this->input->post('total')
		);
		
	
		$where = array(
			'nis' => $this->input->post('nis')
		);
	
		$this->M_ppdb->update_bpp($where,$data,'data');
		$this->load->view('berhasil_ubah_bpp');
	}


	public function update_bpp_baru()
	{


		// $bulan1 = $this->input->post('bulan1');
		// $bulan2 = $this->input->post('bulan2');
		// $tahun1 = $this->input->post('tahun1');
		// $tahun2 = $this->input->post('tahun2');
		// $keterangan_tambahan = $this->input->post('keterangan_tambahan');

		// if ($bulan1 == "" && $tahun1 == "") {
		// 	$setrip = "";
		// } elseif ($bulan2 == "" && $tahun2 == "") {
		// 	$setrip = "";
		// } else {
		// 	$setrip = "-";
		// }
		// $keterangan = $bulan1 . " " . $tahun1 . " " . $setrip . " " . $bulan2 . " " . $tahun2 . "\n" . $keterangan_tambahan;


		$bulan_oto = $this->input->post('jumlah_bulan_oto');
		$bulan_db = $this->input->post('jumlah_bulan_db');

		$bulan_store = "";

		if ((!empty($bulan_oto)) && (!empty($bulan_db))) {
			$this->session->set_flashdata('msg','Jumlah Bulan Otomatis dan Manual Tidak Boleh Terisi Keduanya');
			redirect('admin/data_bpp');
		}



		$total_oto = $this->input->post('total_oto');
		$total_manual = $this->input->post('total_manual');
		$total_store = "";



		$data = array(
			'nama' => $this->input->post('nama'),
			'kelas' => $this->input->post('kelas'),
			'jenjang' => $this->input->post('jenjang'),
			'kelas' => $this->input->post('kelas'),
			'id_rombel' => $this->input->post('id_rombel'),
			'status' => $this->input->post('status'),
			'tanggal_bayar' => $this->input->post('tanggal_bayar'),
			'expired' => $this->input->post('expired'),
			'keterangan' => $this->input->post('keterangan'),
			'jumlah_bulan' => $this->input->post('jumlah_bulan_db'),
			'bpp_per_bulan' => $this->input->post('bpp_per_bulan'),
			'total' => $this->input->post('total_manual')
		);


		$where = array(
			'nis' => $this->input->post('nis')
		);

		$this->M_ppdb->update_bpp($where, $data, 'data');
		$this->session->set_flashdata('scs', 'Edit BPP Sukses');
		redirect('admin/data_bpp');
	}

	public function edit_bpp($id){
		$sess_data = $this->session->userdata();
		$data['edit_bpp'] = $this->M_ppdb->edit_bpp($id)->result();
		$data['biaya'] = $this->M_ppdb->tampil_biaya()->result();
		$data['rombel'] = $this->M_ppdb->tampil_rombel()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('edit_bpp',$data);
		$this->load->view('template/footer');
	}


	public function tambah_bpp(){
		$sess_data = $this->session->userdata();
		$data['biaya'] = $this->M_ppdb->tampil_biaya()->result();
		$data['rombel'] = $this->M_ppdb->tampilrombel()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('tambah_bpp',$data);
		$this->load->view('template/footer');
	}


	public function rekap_data(){
		$role = $this->session->userdata('role');
		$sess_data = $this->session->userdata();
		$id_rombel = $this->session->userdata('id_rombel');
		$id_user = $this->session->userdata('id_user');
		if ($role=="2") {
			$data['jenjang'] = $this->M_ppdb->tampil_jenjang_walas($id_rombel,$id_user)->result();
			$this->load->view('template/header');
			$this->load->view('template/sidebar_admin_sekolah',$sess_data);
			$this->load->view('rekap_data',$data);
			$this->load->view('template/footer');	
		}else {
			$data['jenjang'] = $this->M_ppdb->tampil_jenjang()->result();
			$this->load->view('template/header');
			$this->load->view('template/sidebar_admin_sekolah',$sess_data);
			$this->load->view('rekap_data',$data);
			$this->load->view('template/footer');		
		}
		
	}

	public function ambil_kelas($id){
		$role = $this->session->userdata('role');
		$sess_data = $this->session->userdata();
		$id_rombel = $this->session->userdata('id_rombel');
		$id_user = $this->session->userdata('id_user');

		if ($role=="2") {
			$data['kelas'] = $this->M_ppdb->tampil_kelas_walas($id,$id_rombel,$id_user)->result();
			$this->load->view('template/header');
			$this->load->view('template/sidebar_admin_sekolah',$sess_data);
			$this->load->view('rekap_data_kelas',$data);
			$this->load->view('template/footer');
		}
		else{
			$data['kelas'] = $this->M_ppdb->tampil_kelas($id)->result();
			$this->load->view('template/header');
			$this->load->view('template/sidebar_admin_sekolah',$sess_data);
			$this->load->view('rekap_data_kelas',$data);
			$this->load->view('template/footer');
		}

	}

	public function ambil_rombel($id){
		$role = $this->session->userdata('role');
		$sess_data = $this->session->userdata();
		$id_rombel = $this->session->userdata('id_rombel');
		$id_user = $this->session->userdata('id_user');

		if ($role=="2") {
			$data['rombel'] = $this->M_ppdb->tampil_rombel_walas($id,$id_rombel,$id_user)->result();
			$this->load->view('template/header');
			$this->load->view('template/sidebar_admin_sekolah',$sess_data);
			$this->load->view('rekap_data_rombel',$data);
			$this->load->view('template/footer');
		}
		else{
			$data['rombel'] = $this->M_ppdb->tampil_rombel_id($id)->result();
			$this->load->view('template/header');
			$this->load->view('template/sidebar_admin_sekolah',$sess_data);
			$this->load->view('rekap_data_rombel',$data);
			$this->load->view('template/footer');
		}

	}

	public function ambil_siswa($id){
		$sess_data = $this->session->userdata();
		$data['siswa'] = $this->M_ppdb->tampil_siswa($id)->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('rekap_data_siswa',$data);
		$this->load->view('template/footer');
	}


	public function data_pengguna()
	{
		$sess_data = $this->session->userdata();
		$data['pengguna'] = $this->M_ppdb->tampil_data_users()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('data_pengguna',$data);
		$this->load->view('template/footer');
	}

	public function tunggakan()
	{
		$sess_data = $this->session->userdata();
		$data['tunggakan_sd'] = $this->M_ppdb->tampil_data_bpp_tunggakan('SD')->result();
		$data['tunggakan_smp'] = $this->M_ppdb->tampil_data_tunggakan_smp('SMP')->result();
		$data['tunggakan_sma'] = $this->M_ppdb->tampil_data_tunggakan_sma('SMA')->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('tunggakan',$data);
		$this->load->view('template/footer');
	}

	public function report()
	{
		$sess_data = $this->session->userdata();
		$data['report'] = $this->M_ppdb->tampil_laporan()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('report',$data);
		$this->load->view('template/footer');
	}
	
	public function hapus_report($id){
		$id =    array ('id_laporan' => $id);
		$this->M_ppdb->hapus_report($id,'laporan');
		redirect(base_url('admin/report'));
	}

	
	public function tambahreport()
	{
		$sess_data = $this->session->userdata();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('tambahreport');
		$this->load->view('template/footer');
	}

	public function insert_laporan()
	{
			$file_laporan	= $_FILES['file_laporan']['name'];

			$config['upload_path']          = 'asset/laporan/';
			$config['allowed_types']        = 'xls|xlsx|pdf|PDF';
			$config['max_size']             = 0;
			$config['max_width']            = 0;
			$config['max_height']           = 0;
		
			$this->load->library('upload', $config);
			$this->upload->initialize($config);

			if (! $this->upload->do_upload('file_laporan')) {
				// $error = array('error' => $this->upload->display_errors());
				$this->load->view('error_upload_berkas2');
			}else{
				$file_laporan=$this->upload->data('file_name');
			}

			$data = array(
			'file_laporan' => $file_laporan,
			'divisi' => $this->input->post('divisi'),
			'jumlah_tunggakan' => $this->input->post('jumlah_tunggakan'),
			'keterangan' => $this->input->post('keterangan')
		);
	
			$this->M_ppdb->insert_laporan($data,'laporan');
			$this->load->view('berhasil_laporan');

	}

	public function biaya()
	{
		$sess_data = $this->session->userdata();
		$data['biaya'] = $this->M_ppdb->tampil_biaya()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('biaya',$data);
		$this->load->view('template/footer');
	}

	public function hapus_biaya($id){
		$id =    array ('id_biaya' => $id);
		$this->M_ppdb->hapus_biaya($id,'biaya');
		redirect(base_url('admin/biaya'));
	}

	public function tambahbiaya()
	{
		$sess_data = $this->session->userdata();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('tambahbiaya');
		$this->load->view('template/footer');
	}

	public function insert_biaya()
	{

			$data = array(
			'nominal' => $this->input->post('nominal'),
			'keterangan' => $this->input->post('keterangan')
		);
	
			$this->M_ppdb->insert_biaya($data,'biaya');
			$this->load->view('berhasil_biaya');

	}


	public function tambahpengguna(){
		$sess_data = $this->session->userdata();
		$data['rombel'] = $this->M_ppdb->tampil_rombel()->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('tambahpengguna',$data);
		$this->load->view('template/footer');
	}

	public function insert_pengguna()
	{
			$data = array(
			'nama_user' => $this->input->post('nama_user'),
			'id_rombel' => $this->input->post('id_rombel'),
			'username' => $this->input->post('username'),
			'password' => md5($this->input->post('password')),
			'role' => $this->input->post('role')
		);
	
			$this->M_ppdb->insert_pengguna($data,'user');
			$this->load->view('berhasil_pengguna');

	}

	
	public function hapus_bpp($id){
		$nis =    array ('nis' => $id);
		$this->M_ppdb->hapususer($nis,'data');
		redirect(base_url('admin/data_bpp'));
	}

	
	public function hapus_user($id){
		$id_user =    array ('id_user' => $id);
		$this->M_ppdb->hapus_user($id_user,'user');
		redirect(base_url('admin/data_pengguna'));
	}


	public function data_rombel()
	{
		$data['rombel'] = $this->M_ppdb->tampil_data_rombel()->result();
		$sess_data = $this->session->userdata();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('data_rombel',$data);
		$this->load->view('template/footer');
	}

	public function tambah_rombel(){
		$sess_data = $this->session->userdata();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('tambahrombel');
		$this->load->view('template/footer');
	}

	public function insert_rombel()
	{
			$data = array(
			'id_kelas' => $this->input->post('id_kelas'),
			'rombel' => $this->input->post('rombel')
		);
	
			$this->M_ppdb->insert_rombel($data,'rombel');
			$this->load->view('berhasil_rombel');

	}

	public function hapus_rombel($id){
		$id_rombel =    array ('id_rombel' => $id);
		$this->M_ppdb->hapus_rombel($id_rombel,'rombel');
		redirect(base_url('admin/data_rombel'));
	}

	public function edit_rombel($id){
		$sess_data = $this->session->userdata();
		$data['edit_rombel'] = $this->M_ppdb->edit_rombel($id)->result();
		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('edit_rombel',$data);
		$this->load->view('template/footer');
	}

	
	public function update_rombel(){
		$id       = $this->input->post('id');
		$jenis       = $this->input->post('jenis');
		$kuota        = $this->input->post('kuota');
		$keterangan        = $this->input->post('keterangan');

	
		$data = array(
			'id_kelas' => $this->input->post('id_kelas'),
			'rombel' => $this->input->post('rombel')
		);
	
		$where = array(
			'id_rombel' => $this->input->post('id_rombel')
		);
	
		$this->M_ppdb->updaterombel($where,$data,'rombel');
		$this->load->view('berhasil_rombel_edit');
	}


	public function grafiksd()
	{

		$sess_data 		= $this->session->userdata();
		$data['grafik'] = $this->M_ppdb->tampil_grafiksd()->result();

		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('tampil_grafik',$data);
		$this->load->view('template/footer');
	}

	public function grafiksmp()
	{

		$sess_data 		= $this->session->userdata();
		$data['grafik'] = $this->M_ppdb->tampil_grafiksmp()->result();

		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('tampil_grafiksmp',$data);
		$this->load->view('template/footer');
	}

	public function grafiksma()
	{

		$sess_data 		= $this->session->userdata();
		$data['grafik'] = $this->M_ppdb->tampil_grafiksma()->result();

		$this->load->view('template/header');
		$this->load->view('template/sidebar_admin_sekolah',$sess_data);
		$this->load->view('tampil_grafiksma',$data);
		$this->load->view('template/footer');
	}

	
	public function cariuser2($nisn){
        $data['cariuser'] = $this->M_ppdb->tampilsiswa($nisn,'datasiswa')->result();
        if ($data['cariuser']==null) {
            $this->load->view('data_tidak_ditemukan');    
        }else {
            $this->load->view('cetak_kartu_ujian',$data);
        }

	}
		


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


		public function logout(){
			$this->session->sess_destroy();
			redirect(base_url('hal/login'));    
		}

}
