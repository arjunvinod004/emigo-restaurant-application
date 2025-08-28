<?php
class Pendingstores extends My_Controller {

      public function __construct() {
        parent::__construct();
        $this->load->model('admin/Productmodel');
    }

    public function index()
    {
        $data['pendingstores']=$this->Productmodel->pendingstores();
        $this->render_admin_header('admin/pendingstores', $data);
    }

    public function approve(){
        $id=$this->input->post('id');
        $this->Productmodel->approve($id);
        $this->Productmodel->approveusers($id);
    }
}
?>