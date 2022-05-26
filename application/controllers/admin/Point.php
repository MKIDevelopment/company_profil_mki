<?php
class Point extends CI_Controller {
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
			$url=base_url('administrator');
			redirect($url);
		};
		$this->load->model('M_point');
	}
	public function index(){
		$x['title']=$this->db->query("SELECT * FROM tbl_identitas");
		$x['data']=$this->m_pont->get_all_point();
		$this->load->view('admin/v_point', $x);
	}

	function hapus_point(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_point->hapus_point($kode);
		$this->session->set_flashdata('msg','success-hapus');
		redirect('admin/point');
	}
	function update_point(){
		$kode=strip_tags($this->input->post('kode'));
		$nama=strip_tags($this->input->post('xnama'));
        $icon=strip_tags($this->input->post('xicon'));
        $nilai=strip_tags($this->input->post('xnilai'));
        
		$this->m_point->update_point($kode,$nama,$icon,$nilai);
		$this->session->set_flashdata('msg','info');
		redirect('admin/point');
	}

}
