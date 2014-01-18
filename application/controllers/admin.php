<?php 
class Admin extends CI_Controller{
	public function __contruct(){
		parrent::__contruct();

	}
	public function index(){
		$data['link_image']=base_url().'application/template/image';
		$this->load->view("admin/admin_view",$data);
	}

}
?>