<?php
class Home extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('M_tulisan');
		$this->load->model('M_album');
		$this->load->model('M_galeri');
		$this->load->model('M_pengumuman');
		$this->load->model('M_agenda');
		$this->load->model('M_baner');
		$this->load->model('M_files');
		$this->load->model('M_kontak');
		$this->load->model('M_pengunjung');
		$this->load->model('M_pengguna');
		$this->load->model('M_identitas');
		$this->load->model('M_testimoni');
		$this->load->model('M_point');
		$this->M_pengunjung->count_visitor();
	}

	function index(){
		$x['agenda'] = $this->M_agenda->get_agenda_home();
		$x['alb'] = $this->M_album->get_all_album();
		$x['baner'] = $this->M_baner->get_all_baner();
		$x['berita'] = $this->M_tulisan->get_berita_home();
		$x['contact'] = $this->M_identitas->get_all_pengguna();
		$x['data'] = $this->M_identitas->get_all_pengguna();
		$x['gal'] = $this->M_galeri->get_all_galeri();
		$x['limit'] = $this->M_tulisan->limit_berita();
		$x['pengumuman'] = $this->M_pengumuman->get_pengumuman_home();
		$x['testi'] = $this->M_testimoni->get_all_testimoni();
		$x['tot_files'] = $this->db->get('tbl_files')->num_rows();
		$x['tot_agenda'] = $this->db->get('tbl_agenda')->num_rows();
		$x['point'] = $this->M_point->get_all_point();
		
		$x['faq_l'] = $this->db->query("SELECT * FROM tbl_faq WHERE status='1' ORDER BY status");
		$x['faq_r'] = $this->db->query("SELECT * FROM tbl_faq WHERE status='2' ORDER BY status");
		
		$this->load->view('depan/index',$x);
	}

	function kirim_pesan(){
		$nama = htmlspecialchars($this->input->post('xnama',TRUE),ENT_QUOTES);
		$email = htmlspecialchars($this->input->post('xemail',TRUE),ENT_QUOTES);
		$kontak = htmlspecialchars($this->input->post('xphone',TRUE),ENT_QUOTES);
		$pesan = htmlspecialchars($this->input->post('xmessage',TRUE),ENT_QUOTES);
		$this->M_kontak->kirim_pesan($nama,$email,$kontak,$pesan);
		echo $this->session->set_flashdata('msg','success');
		redirect('home');
	}

}
