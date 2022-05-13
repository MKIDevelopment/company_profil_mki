<?php
class Team extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_team');
		$this->load->model('m_pengguna');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_team->get_all_team();
		$x['title'] = $this->db->query("SELECT * FROM tbl_identitas");
		$this->load->view('admin/v_team',$x);
	}
	
	function simpan_team(){
				$config['upload_path'] = './assets/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/images/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '60%';
	                        $config['width']= 300;
	                        $config['height']= 300;
	                        $config['new_image']= './assets/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();

	                        $photo=$gbr['file_name'];
							$jabatan=strip_tags($this->input->post('xjabatan'));
							$nama=strip_tags($this->input->post('xnama'));
							$jenkel=strip_tags($this->input->post('xjenkel'));
							$tmp_lahir=strip_tags($this->input->post('xtmp_lahir'));
							$tgl_lahir=strip_tags($this->input->post('xtgl_lahir'));
							$facebook=strip_tags($this->input->post('xfacebook'));
							$instragram=strip_tags($this->input->post('xinstragram'));
							$gmail=strip_tags($this->input->post('xgmail'));
							$twitter=strip_tags($this->input->post('xtwitter'));
							$this->m_team->simpan_team($jabatan,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$facebook,$instragram,$gmail,$twitter,$photo);
							echo $this->session->set_flashdata('msg','success');
							redirect('admin/team');
					}else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/team');
	                }
	                 
	            }else{
	            	$jabatan=strip_tags($this->input->post('xjabatan'));
					$nama=strip_tags($this->input->post('xnama'));
					$jenkel=strip_tags($this->input->post('xjenkel'));
					$tmp_lahir=strip_tags($this->input->post('xtmp_lahir'));
					$tgl_lahir=strip_tags($this->input->post('xtgl_lahir'));
					$facebook=strip_tags($this->input->post('xfacebook'));
					$instragram=strip_tags($this->input->post('xinstragram'));
					$gmail=strip_tags($this->input->post('xgmail'));
					$twitter=strip_tags($this->input->post('xtwitter'));
					$this->m_team->simpan_team_tanpa_img($jabatan,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$facebook,$instragram,$gmail,$twitter);
					echo $this->session->set_flashdata('msg','success');
					redirect('admin/team');
				}
				
	}
	
	function update_team(){
				
	            $config['upload_path'] = './assets/images/'; //path folder
	            $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	            $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/images/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '60%';
	                        $config['width']= 300;
	                        $config['height']= 300;
	                        $config['new_image']= './assets/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();
	                        $gambar=$this->input->post('gambar');
							$path='./assets/images/'.$gambar;
							unlink($path);

	                        $photo=$gbr['file_name'];
							$jabatan=strip_tags($this->input->post('xjabatan'));
							$nama=strip_tags($this->input->post('xnama'));
							$jenkel=strip_tags($this->input->post('xjenkel'));
							$tmp_lahir=strip_tags($this->input->post('xtmp_lahir'));
							$tgl_lahir=strip_tags($this->input->post('xtgl_lahir'));
							$facebook=strip_tags($this->input->post('xfacebook'));
							$instragram=strip_tags($this->input->post('xinstragram'));
							$gmail=strip_tags($this->input->post('xgmail'));
							$twitter=strip_tags($this->input->post('xtwitter'));
							$this->m_team->update_team($jabatan,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$facebook,$instragram,$gmail,$twitter,$photo);
							echo $this->session->set_flashdata('msg','success');
							redirect('admin/team');
	                    
	                }else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/team');
	                }
	                
	            }else{
					$jabatan=strip_tags($this->input->post('xjabatan'));
					$nama=strip_tags($this->input->post('xnama'));
					$jenkel=strip_tags($this->input->post('xjenkel'));
					$tmp_lahir=strip_tags($this->input->post('xtmp_lahir'));
					$tgl_lahir=strip_tags($this->input->post('xtgl_lahir'));
					$facebook=strip_tags($this->input->post('xfacebook'));
					$instragram=strip_tags($this->input->post('xinstragram'));
					$gmail=strip_tags($this->input->post('xgmail'));
					$twitter=strip_tags($this->input->post('xtwitter'));
					$this->m_team->update_team_tanpa_img($jabatan,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$facebook,$instragram,$gmail,$twitter);
					echo $this->session->set_flashdata('msg','info');
					redirect('admin/team');
	            } 

	}

	function hapus_team(){
		$kode=$this->input->post('kode');
		$gambar=$this->input->post('gambar');
		$path='./assets/images/'.$gambar;
		unlink($path);
		$this->m_team->hapus_team($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/team');
	}

}