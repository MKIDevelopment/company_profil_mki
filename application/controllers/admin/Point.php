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
		$a['title']=$this->db->query("SELECT * FROM tbl_identitas");
		$a['data']=$this->m_skill->get_all_skill();
		$this->load->view('admin/v_point', $a);
	}

	function hapus_skill(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_skill->hapus_skill($kode);
		$this->session->set_flashdata('msg','success-hapus');
		redirect('admin/point');
	}
	function update_skill(){
		$kode=strip_tags($this->input->post('kode'));
		$nama=strip_tags($this->input->post('xnama'));
        $icon=strip_tags($this->input->post('xicon'));
        $nilai=strip_tags($this->input->post('xnilai'));
        
		$this->m_skill->update_skill($kode,$nama,$icon,$nilai);
		$this->session->set_flashdata('msg','info');
		redirect('admin/point');
	}

}
