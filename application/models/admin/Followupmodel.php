<?php
class Followupmodel extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    //MARK:Insert New Followup
    public function add($data) 
    {
    $this->db->insert('followup', $data);
    }
    
}
?>