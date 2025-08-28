<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Followup extends CI_Controller {

    public function __construct()
	{
		parent::__construct();
		$this->load->model('admin/Storemodel');
		$this->load->model('admin/Countrymodel');
		$this->load->model('admin/Packagemodel');
		$this->load->model('admin/Taxmodel');
		$this->load->model('admin/Usermodel');
		$this->load->model('admin/Tablemodel');
		$this->load->model('admin/Packagemodel');
		$this->load->model('admin/Followupmodel');
		
		require('Common.php');
		if (!$this->session->userdata('login_status')) {
			redirect(login);
		}
	}
	public function index()
	{
        
		$controller = $this->router->fetch_class(); // Gets the current controller name
		$method = $this->router->fetch_method();   // Gets the current method name
		$data['controller'] = $controller;
		$logged_in_store_id = $this->session->userdata('logged_in_store_id'); //echo $logged_in_store_id;exit;
		$role_id = $this->session->userdata('roleid'); // Role id of logged in user
		$user_id = $this->session->userdata('loginid'); // Loged in user id
        // print_r($user_id);exit;
         $store_details = $this->Commonmodel->get_admin_details_by_store_id($logged_in_store_id);
        $data['Name'] = $store_details->Name;
        $data['userAddress'] = $store_details->userAddress;
        $data['support_no'] = $store_details->UserPhoneNumber;
         $data['support_email'] = $store_details->userEmail;
		$data['profileimg'] = $store_details->profileimg;
	  
        $data['countries']=$this->Countrymodel->listcountries();
		$data['stores']=$this->Storemodel->liststores();
		$data['storeDet']=$this->Storemodel->get($logged_in_store_id);
		//  print_r($data['countries']);exit;
		$this->load->view('admin/header',$data);
		$this->load->view('admin/menudashboard',$data);
		$this->load->view('admin/followup/list',$data);
		$this->load->view('admin/footer',$data);
	}

	//MARK: Add Followup

	public function add()
{
			$this->load->library('form_validation');
			$this->form_validation->set_rules('followup_user', 'user', 'required');
			$this->form_validation->set_rules('followup_date', 'date', 'required');
			$this->form_validation->set_rules('followup_remarks', 'remarks', 'required');


	if($this->form_validation->run() == FALSE) 
	{
				$response = [
					 'success' => false,
					 'errors' => [
					 'followup_user' => form_error('followup_user'),
					 'followup_date' => form_error('followup_date'),
					 'followup_remarks' => form_error('followup_remarks')
					]
				];
				echo json_encode($response);
	}
	else
	{
                $store_id = $this->session->userdata('logged_in_store_id');     
			    $data = array(
			        'enetered_user' => $this->input->post('followup_user'),
					'store_id' =>$store_id,
					'date_and_time' => $this->input->post('followup_date'),
			        'remark' =>$this->input->post('followup_remarks'),
			        );
					print_r($data);
			    $this->Followupmodel->add($data);
				$response = (['success' => 'success','data'=>$data]);
				// echo json_encode($response);
	}
	
}


	

	
}
?>