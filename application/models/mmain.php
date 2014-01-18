<?php
class Mmain extends CI_Model{
	public function __construct(){
        parent::__construct();
    }
	function get_sharing_ex($id){
		$this->db->select("content");
		$this->db->where("id",$id);
		//$this->db->order_by("id","ASC");
		$query=$this->db->get("sharing_listening");
		return $query->result_array();
	}
	function get_id_name_sharing_ex($level){
		$this->db->select("id,name");
		$this->db->where("level",$level);
		$this->db->order_by("id","ASC");
		$query=$this->db->get("sharing_listening");
		return $query->result_array();
	}
	public function show_list_video(){
	}
	 function get_id_name_sharing_reading($level){
		$this->db->select("id,name");
		$this->db->where("level",$level);
		$this->db->order_by("id","ASC");
		$query=$this->db->get("sharing_reading");
		return $query->result_array();
	}
	function get_sharing_reading($id){
		$this->db->select("content");
		$this->db->where("id",$id);
		//$this->db->order_by("id","ASC");
		$query=$this->db->get("sharing_reading");
		return $query->result_array();
	}

	public function check_login($info){
        $username=$info['username'];
    	$password=$info['password'];
        $this->db->where('username',$username);
        $this->db->where('password',$password);
        $query = $this->db->get('users');
    	if($query->num_rows()==1)
            return true;
    	return false;
    }
    public function signup($info)
    {
    	$fullname=$info['fullname'];
    	$username=$info['username'];
    	$password=$info['password'];
    	$email=$info['email'];
    	$sql = "INSERT INTO  users (username, password, fullname, email) VALUES ('$username', '$password', '$fullname', '$email')";
    	$this->db->query($sql);
    	echo $sql;
    	echo "ok";
    }
	
}
?>