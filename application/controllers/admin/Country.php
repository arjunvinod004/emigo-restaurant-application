<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Country extends CI_Controller {

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
		$this->load->model('admin/Countrymodel');
		
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
		$data['Clientscount']=$this->Commonmodel->Clientscount();
		$data['completedOrder']=$this->Commonmodel->completedOrder();

		$logged_in_store_id = $this->session->userdata('logged_in_store_id'); //echo $logged_in_store_id;exit;

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
		// $this->load->view('admin/header',$data);
		// $this->load->view('admin/menudashboard',$data);
		// $this->load->view('admin/admindashboard',$data);
	    // $this->load->view('admin/footer',$data);
	    $data['countries']=$this->Countrymodel->listcountries();
		$this->load->view('admin/header',$data);
		$this->load->view('admin/menudashboard',$data);
		// $this->load->view('admin/admindashboard',$data);
		$this->load->view('admin/country/countries',$data);
	    $this->load->view('admin/footer',$data);
		// $this->load->view('admin/includes/header');
		
		// $this->load->view('admin/includes/footer');
	}
	
	
	public function delete(){
	    $this->Countrymodel->delete($this->input->post('id'));
		$this->session->set_flashdata('error','Country deleted successfully');
	}
	
	//MARK: Add country
	public function add(){
        $data['countries']=$this->Countrymodel->listcountries();
	    // if(isset($_POST['add']))
		// {
		    //callback_countryname_exists
			$this->load->library('form_validation');
		    // $this->form_validation->set_error_delimiters('', ''); 
			$this->form_validation->set_rules('country_name', 'name', 'required');
			$this->form_validation->set_rules('country_code', 'code', 'required');
			$this->form_validation->set_rules('country_currency', 'Currency', 'required');

		
			if($this->form_validation->run() == FALSE) 
			{
				$response = [
					'success' => false,
					'errors' => [
						'country_name' => form_error('country_name'),
						'country_code' => form_error('country_code'),
						'country_currency' => form_error('country_currency')
					]
				];
			
				echo json_encode($response);
			}
			else
			{
                
			    $data = array(
			        'name' => $this->input->post('country_name'),
					'currency' => $this->input->post('country_currency'),
					'code' => $this->input->post('country_code'),
			        'is_active' => 1,
			        );

			$this->db->where('name', $data['name']);
            $this->db->or_where('currency', $data['currency']);
            $query = $this->db->get('countries');
        
            if ($query->num_rows() > 0) {
                echo json_encode(['success' => false, 'errors' => 'name or currency exists']);
            } 
            else{
                $this->Countrymodel->insert($data);
                echo json_encode(['success' => 'success']);
            }
			}
		// }
		
	}
	//MARK: Edit country
	public function edit(){
		$id = $this->input->post('id');
        $edit_country = $this->Countrymodel->get($id); 
        if (!$edit_country || !is_array($edit_country)) 
        {
            echo json_encode([
                'success' => false,
                'message' => 'Invalid enquiry_details data.'
            ]);
            return;
        }
        $result = [
                'name' => $edit_country['name'] ?? null,
				'code' => $edit_country['code'],
                'currency' => $edit_country['currency'],
                'is_active' => 1,
        ];
        echo json_encode([
            'success' => 'success',
            'data' => $result
        ]);
		// print_r($result);exit;
	}

	public function updatecountrydetails(){
		$this->form_validation->set_rules('country_name', 'Country name', 'required');
		$this->form_validation->set_rules('country_code', 'Country code', 'required');
		$this->form_validation->set_rules('country_currency', 'Currency', 'required');
		

		$id = $this->input->post('hidden_country_id');

		if($this->form_validation->run() == FALSE) 
		{
			$response = [
				'success' => false,
				'errors' => [
					'country_name' => form_error('country_name'),
					'country_code' => form_error('country_code'),
					'country_currency' => form_error('country_currency'),
				]
			];
		
			echo json_encode($response);
		}
		else{
			$data = array(
				'name' => $this->input->post('country_name'),
				'code' => $this->input->post('country_code'),
				'currency' => $this->input->post('country_currency'),
				'is_active' => 1,
				);
				$this->Countrymodel->updatecountrydetails($id,$data);
		$response = (['success' => 'success','data'=>$data]);
		echo json_encode($response);
	
		}
		

		
		// echo $id;exit;
	}


	  public function DeleteUser(){
        $id=$this->input->post('id'); 
        $this->Countrymodel->DeleteUser($id);
        // $this->session->set_flashdata('error','User deleted successfully');
    }

	public function countryname_exists($country)
	{
		if ($this->Countrymodel->check_countryname_exists($country)) {
			$this->form_validation->set_message('countryname_exists', 'The {field} is already taken.');
			return FALSE;
		} else {
			return TRUE;
		}
	}

}