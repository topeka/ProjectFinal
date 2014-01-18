<?php
class Main extends CI_Controller{
	public function _construc(){
		parent::_construct();
	}
	public function index(){
		$this->load->view("main_view");
		
	}
	public function speakingformat(){
		$this-> load-> view("speakingformat");
	}/*mo trang gioi thieu format bai thi spe va wri*/
	public function listeningformat(){
		$this-> load-> view("listeningformat");
	}/*mo trang gioi thieu format bai thi lis va rea*/
	public function listening(){
		$this-> load-> view("listening");
	}/*mo trang listening*/
	public function speaking(){
		$this-> load-> view("speaking");
	}/*mo trang speaking*/
	public function reading(){
		$this-> load-> view("reading");
	}/*mo trang speaking*/
	public function writting(){
		$this-> load-> view("writting");
	}
	public function show_video(){
		
		$this->load->view('show_video');
	}
	public function process_login(){
		$this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
		$this->form_validation->set_rules('password', 'Password', 'required');
		if($this->form_validation->run()==TRUE)
		{
			$info['username']=$this->input->post('username');
			$info['password']=$this->input->post('password');
			$infocheck=$this->mmain->check_login($info);
			if($infocheck)
			{

				echo "ok";
				$this->session->set_userdata('username', $info['username']);
			}
			else
				echo "err";
		}
	}

	public function process_signup(){
		$this->form_validation->set_rules('username', 'Username', 'trim|required|xss_clean');
		$this->form_validation->set_rules('password', 'Password', 'required');
		$this->form_validation->set_rules('fullname', 'Fullname', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required');
		if($this->form_validation->run()==TRUE)
		{
			$data["fullname"]=$this->input->post('fullname');
			$data["username"]=$this->input->post('username');
			$data["password"]=$this->input->post('password');
			$data["email"]=$this->input->post('email');
			$this->mmain->signup($data);
		}

	}
	
	public function process_logout(){
		$this->session->unset_userdata('username');
	}

	public function list_sharing_listening($level){
		$data['sharing_id']=$this->mmain->get_id_name_sharing_ex($level);
		$data['link']=base_url();
		$this-> load-> view("list_sharing_listening",$data);
	}
	public function show_detail_sharing_listening($id){
		$data['sharing_content']=$this->mmain->get_sharing_ex($id);
		
		$this->load->view('show_detail_sharing_listening',$data);
	}
	/*mo trang speaking*/
	// Luyen tap photo level 250-500
	public function practice_photo_500(){
		$data['link_xml']=base_url().'application/data_test/photo/500/photo.xml';
		$data['link_image']=base_url().'application/data_test/photo/picture/';
		$data['link_audio']=base_url().'application/data_test/photo/audio/';
		$this->load->view("listening/photo/practice_photo_500",$data);
	}	
	public function list_all_incom_500(){

		$this->load->view("reading/incom_sentence/all_500");
	}
	public function incom_sentence_500(){
		

		$this->load->view("reading/incom_sentence/incom_sentence_500");
	}
	public function incom_sentence_750(){

		$this->load->view("reading/incom_sentence/incom_sentence_750");
	}
	public function list_sharing_reading($level){
		$data['sharing_id']=$this->mmain->get_id_name_sharing_reading($level);
		$this-> load-> view("list_sharing_reading",$data);
	}
	public function show_detail_sharing_reading($id){
		$data['sharing_content']=$this->mmain->get_sharing_reading($id);
		$this->load->view('show_detail_sharing_reading',$data);
	}
	
}
?>