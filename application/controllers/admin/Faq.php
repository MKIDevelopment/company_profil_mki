<?php
class Faq extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_faq');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_faq->get_all_faq();
		$x['title'] = $this->db->query("SELECT * FROM tbl_identitas");
		$this->load->view('admin/v_faq',$x);
	}

	function simpan_faq(){
		$pertanyaan=strip_tags($this->input->post('xtanya'));
		$jawaban=strip_tags($this->input->post('xjawab'));
		$status=strip_tags($this->input->post('xstat'));
		$this->m_faq->simpan_faq($pertanyaan,$jawaban,$status);
		echo $this->session->set_flashdata('msg','success');
		redirect('admin/faq');
	}

	function update_faq(){
		$kode=strip_tags($this->input->post('kode'));
		$pertanyaan=strip_tags($this->input->post('xtanya'));
		$jawaban=strip_tags($this->input->post('xjawab'));
		$status=strip_tags($this->input->post('xstat'));
		$this->m_faq->update_faq($kode,$pertanyaan,$jawaban,$status);
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/faq');
	}
	function hapus_faq(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_faq->hapus_faq($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/faq');
	}

}
