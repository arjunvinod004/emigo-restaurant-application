<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */
	
	public function __construct()
	{
		parent::__construct();
		require('Common.php');
		if (!$this->session->userdata('login_status')) {
			redirect(login);
		}
	}
	public function index()
	{
		$this->load->model('website/Homemodel');
		
		$controller = $this->router->fetch_class(); // Gets the current controller name
		$method = $this->router->fetch_method();   // Gets the current method name
		$data['controller'] = $controller;
		$data['Clientscount']=$this->Commonmodel->Clientscount();
		$data['completedOrder']=$this->Commonmodel->completedOrder();

		$logged_in_store_id = $this->session->userdata('logged_in_store_id');  // echo $logged_in_store_id;exit;

		$role_id = $this->session->userdata('roleid'); // Role id of logged in user
		$user_id = $this->session->userdata('loginid'); // Loged in user id
        
         $store_details = $this->Commonmodel->get_admin_details_by_store_id($logged_in_store_id);
		//   print_r($store_details);exit;
        //  $support_details = $this->Homemodel->get_support_details_by_country_id($store_details->store_country);
        $data['Name'] = $store_details->Name;
		// print_r($data['Name']);exit;
        $data['userAddress'] = $store_details->userAddress;
        $data['support_no'] = $store_details->UserPhoneNumber;
         $data['support_email'] = $store_details->userEmail;
		$data['profileimg'] = $store_details->profileimg;
        
		// $this->session->set_userdata('Name',$data['store_details'][0]['Name']);
		//print_r($data['stores']);exit;
		$this->load->view('admin/header',$data);
		$this->load->view('admin/menudashboard',$data);
		$this->load->view('admin/admindashboard',$data);
	    $this->load->view('admin/footer',$data);
	}
}