<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reports extends CI_Controller {

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
		$this->load->model('admin/Productmodel');
		$this->load->model('admin/Storemodel');
		$this->load->model('owner/Ordermodel');
		$this->load->model('owner/Stockmodel');
		$this->load->model('website/Homemodel');
		if (!$this->session->userdata('login_status')) {
			redirect(login);
		}
	}
	public function index()
	{
		$controller = $this->router->fetch_class(); // Gets the current controller name
		$method = $this->router->fetch_method();   // Gets the current method name
		$data['controller'] = $controller;
		$data['store_id'] = $this->session->userdata('logged_in_store_id');
		
		$role_id = $this->session->userdata('roleid'); // Role id of logged in user
		$user_id = $this->session->userdata('loginid'); // Loged in user id
		
		$this->load->model('website/Homemodel');
		$store_details = $this->Homemodel->get_store_details_by_store_id($data['store_id']);
        $support_details = $this->Homemodel->get_support_details_by_country_id($store_details->store_country);
        $data['store_disp_name'] = $store_details->store_disp_name;
        $data['store_address'] = $store_details->store_address;
        $data['support_no'] = $support_details->support_no;
        $data['support_email'] = $support_details->support_email;
		$data['store_logo'] = $store_details->store_logo_image;
		
		if($role_id == 1 || $role_id == 2) { //Admin and Shop owner
			$this->load->view('owner/includes/header',$data);
			$this->load->view('owner/includes/owner-dashboard',$data);
			$this->load->view('owner/order/reports');
			$this->load->view('owner/includes/footer');
		}
		if($role_id == 5) { //Supplier
			$this->load->view('owner/includes/header',$data);
			$this->load->view('owner/includes/supplier-dashboard',$data);
			$this->load->view('owner/order/reports');
			$this->load->view('owner/includes/footer');
		}
		if($role_id == 6) { // Kitchen
			$this->load->view('owner/includes/header',$data);
			$this->load->view('owner/includes/supplier-dashboard',$data);
			$this->load->view('owner/order/reports');
			$this->load->view('owner/includes/footer');
		}
	}

	public function supplier_reports()
	{
		$controller = $this->router->fetch_class(); // Gets the current controller name
		$method = $this->router->fetch_method();   // Gets the current method name
		$data['controller'] = $controller;
		$data['store_id'] = $this->session->userdata('logged_in_store_id');
		
		$role_id = $this->session->userdata('roleid'); // Role id of logged in user
		$user_id = $this->session->userdata('loginid'); // Loged in user id
		
		$this->load->model('website/Homemodel');
		$store_details = $this->Homemodel->get_store_details_by_store_id($data['store_id']);
        $support_details = $this->Homemodel->get_support_details_by_country_id($store_details->store_country);
        $data['store_disp_name'] = $store_details->store_disp_name;
        $data['store_address'] = $store_details->store_address;
        $data['support_no'] = $support_details->support_no;
        $data['support_email'] = $support_details->support_email;
		$data['store_logo'] = $store_details->store_logo_image;
		
			$this->load->view('owner/includes/header',$data);
			$this->load->view('owner/includes/supplier-dashboard',$data);
			$this->load->view('owner/order/supplier-reports');
			$this->load->view('owner/includes/footer');
		
	}

}