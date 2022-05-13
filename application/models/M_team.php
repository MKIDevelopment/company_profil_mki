<?php 
class M_team extends CI_Model{

	function get_all_team(){
		$hsl=$this->db->query("SELECT * FROM tbl_team");
		return $hsl;
	}

	function simpan_team($jabatan,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$facebook,$instragram,$gmail,$twitter,$photo){
		$hsl=$this->db->query("INSERT INTO tbl_team (jabatan,team_nama,team_jenkel,team_tmp_lahir,team_tgl_lahir,akun_fb,akun_ig,akun_google,akun_twit,team_photo) VALUES ('$jabatan','$nama','$jenkel','$tmp_lahir','$tgl_lahir','$facebook','$instragram','$gmail','$twitter','$photo')");
		return $hsl;
	}
	function simpan_team_tanpa_img($jabatan,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$facebook,$instragram,$gmail,$twitter){
		$hsl=$this->db->query("INSERT INTO tbl_team (jabatan,team_nama,team_jenkel,team_tmp_lahir,team_tgl_lahir,akun_fb,akun_ig,akun_google,akun_twit) VALUES ('$jabatan','$nama','$jenkel','$tmp_lahir','$tgl_lahir','$facebook','$instragram','$gmail','$twitter')");
		return $hsl;
	}

	function update_team($jabatan,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$facebook,$instragram,$gmail,$twitter,$photo){
		$hsl=$this->db->query("UPDATE tbl_team SET jabatan='$jabatan',team_nama='$nama',team_jenkel='$jenkel',team_tmp_lahir='$tmp_lahir',team_tgl_lahir='$tgl_lahir',akun_fb='$facebook',akun_ig='$instragram',akun_google='$gmail',akun_twit='$twitter',team_photo='$photo' WHERE team_id='$kode'");
		return $hsl;
	}
	function update_team_tanpa_img($jabatan,$nama,$jenkel,$tmp_lahir,$tgl_lahir,$facebook,$instragram,$gmail,$twitter){
		$hsl=$this->db->query("UPDATE tbl_team SET jabatan='$jabatan',team_nama='$nama',team_jenkel='$jenkel',team_tmp_lahir='$tmp_lahir',team_tgl_lahir='$tgl_lahir',akun_fb='$facebook',akun_ig='$instragram',akun_google='$gmail',akun_twit='$twitter' WHERE team_id='$kode'");
		return $hsl;
	}
	function hapus_team($kode){
		$hsl=$this->db->query("DELETE FROM tbl_team WHERE team_id='$kode'");
		return $hsl;
	}

	//front-end
	function team(){
		$hsl=$this->db->query("SELECT * FROM tbl_team");
		return $hsl;
	}
	function team_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT * FROM tbl_team limit $offset,$limit");
		return $hsl;
	}

}