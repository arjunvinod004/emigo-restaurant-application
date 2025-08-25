<?php
class Newstore extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model('admin/Productmodel');
        $this->load->model('admin/Storemodel');
		$this->load->model('admin/Countrymodel');
		$this->load->model('admin/Packagemodel');
		$this->load->model('admin/Taxmodel');
		$this->load->model('admin/Usermodel');
		$this->load->model('admin/Tablemodel');
		$this->load->model('admin/Packagemodel');

		
    }

    public function index() {
        $controller = $this->router->fetch_class(); // Gets the current controller name
		$method = $this->router->fetch_method();   // Gets the current method name
		$data['controller'] = $controller;
		
		$role_id = $this->session->userdata('roleid'); // Role id of logged in user
		$user_id = $this->session->userdata('loginid'); // Loged in user id
        
        
        
		$data['countries']=$this->Countrymodel->listcountries();
        // print_r($data['countries']);
		$data['packages']=$this->Packagemodel->listpackages();
        $this->load->view('admin/newstore',$data);
    }

	public function getTaxRates(){
		$data['tax_rates']=$this->Taxmodel->getTaxRatesByCountryId($this->input->post('country_id'));
// 		echo '<option value="">Select</option>';
		echo '<option value="1">Not Applicable</option>';
        foreach($data['tax_rates'] as $rate) { ?>
<option value="<?php echo $rate['tax_id']; ?>"><?php echo $rate['tax_rate']; ?></option>
<?php }
	}



    	public function add_store(){
		$data['packages']=$this->Packagemodel->listpackages();
		$data['countries']=$this->Countrymodel->listcountries();
		if ($this->input->method() === 'post') {
			
				// echo "here1";exit;
                if(!empty($_FILES['store_logo_image']['name'])){
					$config['upload_path'] = './uploads/store/';
					$config['allowed_types'] = 'jpg|jpeg|png|gif|pdf|doc|docx';
					$config['file_name'] = $_FILES['store_logo_image']['name'];
					// print_r($config['file_name']); exit;

					// echo "image here"; exit;
					
					
					$this->load->library('upload',$config);
					$this->upload->initialize($config);
					
				if($this->upload->do_upload('store_logo_image')){
						$uploadData = $this->upload->data();
						$store_logo_image = $uploadData['file_name'];
						// echo $store_logo_image;exit;
				}else{
					   $uploaderr=$this->upload->display_errors();
                    //    echo $uploaderr;exit;
					}
				}else{
					$store_logo_image = '';
				}


				
				
				if($this->input->post('bill_no') == ''){  //GST Registration number
					$bill_no = 0;	
				}else{
					$bill_no = $this->input->post('bill_no'); //GST Registration number
				}

				// print_r($store_logo_image);exit;

				$checkbox_values = $this->input->post('checkbox');
        		$checkbox_string = implode(",", $checkbox_values);// Convert array to comma-separated values if needed

				$checkbox_pickup_or_take_away = $this->input->post('checkbox_pickup_or_take_away'); //if checked 1 else 0
				$checkbox_dining = $this->input->post('checkbox_dining');
				$checkbox_delivery = $this->input->post('checkbox_delivery');

				$pickup_country_code = $this->input->post('pickup_country_code');
                $dining_country_code =  $this->input->post('dining_country_code');
                $delivery_country_code =  $this->input->post('delivery_country_code');

				$txt_pickup_or_take_away = $this->input->post('txt_pickup_or_take_away'); //if checked 1 else 0
				$txt_dining = $this->input->post('txt_dining');
				$txt_delivery = $this->input->post('txt_delivery');	

				  // Concatenate the values
				  $combinedPickupNumber = $pickup_country_code . $txt_pickup_or_take_away;
				  $combinedDiningNumber = $dining_country_code . $txt_dining;
				  $combinedDeliveryNumber =  $delivery_country_code . $txt_delivery;
				  $is_whatsapp = $this->input->post('is_whatsapp_check');

			    $data = array(
					'store_disp_name' => $this->input->post('disp_name'),
			        'store_name' => $this->input->post('name'),
			        'store_desc' => $this->input->post('store_desc'),
			        'store_email' => $this->input->post('email'),
			        'store_phone' => $this->input->post('phone'),
                    'store_address' => $this->input->post('address'),
                    'store_opening_time' => $this->input->post('store_opening_time'),
					'store_closing_time' => $this->input->post('store_closing_time'),
					'contract_start_date' => $this->input->post('contract_start_date'),
					'contract_end_date' => $this->input->post('contract_end_date'),
					'next_followup_date' => $this->input->post('next_followup_date'),
					'followup_remarks' => $this->input->post('followup_remarks'),
					'no_of_tables' => $this->input->post('no_of_tables'),
					'store_trade_license' => $this->input->post('trade_license'),
                    'store_location' => $this->input->post('location'),
                    'store_country' => $this->input->post('country'),
					'gst_or_tax' => $this->input->post('gst_or_tax'),
					'registration_no' => $bill_no,
					'store_language' => $this->input->post('language'),
					'store_selected_languages' => $checkbox_string,
					'is_pickup' => 0,
					'pickup_number' => 0,
					'is_dining' => 0,
					'dining_number' => 0,
					'is_delivery' => 0,
					'delivery_number' => 0,
					'store_logo_image' => $store_logo_image,
					'whatsapp_enable' => 0,
			        'is_active' => 1,
                    'is_approve'=>0 // when the store is created it will be 0
			        );

				//  print_r($data);exit;
				
				$package_details = $this->Packagemodel->get($this->input->post('no_of_tables')); //When add store select packege id then find no_of_quantity in the package table
				$last_insert_store_id = $this->Storemodel->insert($data);
				$this->session->set_userdata('last_insert_store_id', $last_insert_store_id);
				$this->session->set_userdata('last_insert_store_name', $this->input->post('name'));
				

				for ($i = 1; $i <= $package_details[0]['no_of_quantity']; $i++) {
					$data = array(
						'store_id' => $last_insert_store_id,
						'table_name' => 'Table '.$i,
						'qr_code' => '',
						'store_table_token' => '',
						'is_active' => 1,
					);
					$this->Storemodel->insert_store_table($data);
				}




					$data = array(
						'userroleid' => 2,
						'store_id' => $last_insert_store_id,
						'Name' => $this->input->post('name'),
						'userEmail' => $this->input->post('email'),
						'userName' => $this->input->post('username'),
						'userPassword' => md5(trim($this->input->post('password'))),
						'userPhoneNumber' => $this->input->post('phone'),
						'userAddress' => $this->input->post('address'),
						'profileimg' => '',
						'is_active' => 0,
			        );
					$this->Usermodel->insert($data);

					$data = array(
						'userroleid' => 3,
						'store_id' => $last_insert_store_id,
						'Name' => $this->input->post('name'),
						'userEmail' => $this->input->post('email'),
						'userName' => $this->input->post('user_username'),
						'userPassword' => md5(trim($this->input->post('user_password'))),
						'userPhoneNumber' => $this->input->post('phone'),
						'userAddress' => $this->input->post('address'),
						'profileimg' => '',
						'is_active' => 0,
			        );
					$this->Usermodel->insert($data);


				
				// $this->session->set_flashdata('success','New record inserted...');
				// redirect('admin/store');
		}
	}

}