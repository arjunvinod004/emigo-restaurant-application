<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    /* Common render function */
    public function render_admin_header($view, $data = []) {
        $this->load->model('website/Homemodel');
		$controller = $this->router->fetch_class(); /* Gets the current controller name */
		$method = $this->router->fetch_method();    /* Gets the current method name */
		$data['controller'] = $controller;
		$data['Clientscount']=$this->Commonmodel->Clientscount();
		$data['completedOrder']=$this->Commonmodel->completedOrder();
		$logged_in_store_id = $this->session->userdata('logged_in_store_id');   /* echo $logged_in_store_id;exit; */
		$role_id = $this->session->userdata('roleid');  /* Role id of logged in user */
		$user_id = $this->session->userdata('loginid');  /* Loged in user id */
        $store_details = $this->Commonmodel->get_admin_details_by_store_id($logged_in_store_id);
        $data['Name'] = $store_details->Name;
        $data['userAddress'] = $store_details->userAddress;
        $data['support_no'] = $store_details->UserPhoneNumber;
        $data['support_email'] = $store_details->userEmail;
		$data['profileimg'] = $store_details->profileimg;
        
		$this->load->view('admin/header',$data);
		$this->load->view('admin/menudashboard',$data);
		$this->load->view($view, $data);
	    $this->load->view('admin/footer',$data);
    }
}
