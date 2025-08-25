<?php class Settings extends CI_Controller {
public function __construct() {   
    parent::__construct();
    $this->load->model('admin/Storemodel');
    $this->load->model('admin/Countrymodel');
    $this->load->model('admin/Packagemodel');
    $this->load->model('admin/Taxmodel');
    $this->load->model('admin/Usermodel');
    $this->load->model('admin/Tablemodel');
    $this->load->model('admin/Packagemodel');
    
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
    // print_r($data['controller']); exit;
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
    $data['taxes']=$this->Taxmodel->listtaxes();  //print_r($data['taxes']);
    $data['countries']=$this->Countrymodel->listcountries();
    $data['stores']=$this->Storemodel->liststores();
    $data['todayDate'] = date('m-d-Y');
    $data['todayTime'] = date('H:i:s');
    //  print_r($data['countries']);exit;
    $this->load->view('admin/header',$data);
    $this->load->view('admin/menudashboard',$data);
    $this->load->view('admin/settings/settings',$data);
    $this->load->view('admin/footer',$data);
}


public function Support(){
     $controller = $this->router->fetch_class(); // Gets the current controller name
    $method = $this->router->fetch_method();   // Gets the current method name
    $data['controller'] = $controller;
  $logged_in_store_id = $this->session->userdata('logged_in_store_id');
        
   $store_details = $this->Commonmodel->get_admin_details_by_store_id($logged_in_store_id);
    //   print_r($store_details);exit;
    //  $support_details = $this->Homemodel->get_support_details_by_country_id($store_details->store_country);
    $data['Name'] = $store_details->Name;
    // print_r($data['Name']);exit;
    $data['userAddress'] = $store_details->userAddress;
    $data['support_no'] = $store_details->UserPhoneNumber;
     $data['support_email'] = $store_details->userEmail;
    $data['profileimg'] = $store_details->profileimg;
    $data['taxes']=$this->Taxmodel->listtaxes();  //print_r($data['taxes']);
    $data['countries']=$this->Countrymodel->listcountries();
    $data['stores']=$this->Storemodel->liststores();
    $data['todayDate'] = date('m-d-Y');
    $data['todayTime'] = date('H:i:s');
    //  print_r($data['countries']);exit;
    $this->load->view('admin/header',$data);
    $this->load->view('admin/menudashboard',$data);
    $this->load->view('admin/support',$data);
    $this->load->view('admin/footer',$data);  
}
}