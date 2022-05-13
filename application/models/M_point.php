<?php
class M_point extends CI_Model {

	function get_all_point(){
		$hsl=$this->db->query("select * from tbl_point");
		return $hsl;
	}
	function update_point($kode,$nama,$icon,$nilai){
		$hsl=$this->db->query("update tbl_point set nama_point='$nama', icon_point='$icon', nilai_point='$nilai' where id_point='$kode'");
		return $hsl;
	}
	function hapus_point($kode){
		$hsl=$this->db->query("delete from tbl_point where id_point='$kode'");
		return $hsl;
	}
}

/* End of file m_point.php */
/* Location: ./application/models/m_point.php */