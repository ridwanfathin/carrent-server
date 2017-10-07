<?php  


/**
* 
*/
class m_pesanan extends CI_Model
{
	
	private $table_name 	= "tb_transaksi";
	private $table_detail 	= "tb_detail_transaksi";
	private $table_user		= "tb_users";
	private $primary 		= "KODE_TRANSAKSI";

	function get_all(){

		#Get all data users
		$this->db->select("t_tran.*,t_user.NAME");
		$data=$this->db->join($this->table_user." t_user","t_user.ID_USER=t_tran.ID_USER");
		$data=$this->db->get($this->table_name." t_tran");
		return $data->result();


	}

	function get_by_id($id){

		#Get data user by id
		$this->db->where($this->primary,$id);
		$data=$this->db->get($this->table_name);

		return $data->row();
	}


	function get_by_username_email($username,$email){		
		#Get data by username or email
		$this->db->where('USERNAME',$username);
		$this->db->or_where('EMAIL',$email);
		$data=$this->db->get($this->table_name)->row();

		return $data;
	}


	function insert($data){

		#Insert data to table tb_users
		$insert=$this->db->insert($this->table_name,$data);

		return $insert;
	}

	function delete($id){
		#Delete data user by id
		$this->db->where($this->primary,$id);
		$delete=$this->db->delete($this->table_name);

		return $delete;
	}

	function update($id,$data){
		#Update data user by id
		$this->db->where($this->primary,$id);
		$update=$this->db->update($this->table_name,$data);

		return $update;
	}

}

?>