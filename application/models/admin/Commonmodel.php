<?php
Class Commonmodel extends CI_Model
{

	public function __construct()
	{
        parent::__construct();
    }
    //MARK: - Get Store Details by ID
    public function get_store_details_by_id($id){
        $this->db->select('*');
        $this->db->from('store');
        $this->db->where('store_id', $id);
        $query = $this->db->get();
        return $query->row();
    }
    //MARK: - Delete Record
    public function delete_record($table, $where)
    {
        if ($this->db->where($where)->delete($table)) {
            return true;
        }
        return false;
    }
    //MARK: - Update Record
    public function update($table, $where, $data)
    {
        $this->db->where($where);
        return $this->db->update($table, $data);
    }
    //MARK: - Get Active Records
    public function get_records($table, $only_active = false, $status_field = 'is_active', $extra_where = [], $order_by = null, $order_dir = 'ASC')
    {
        if ($only_active) {
            $this->db->where($status_field, 1);
        }

        if (!empty($extra_where)) {
            $this->db->where($extra_where);
        }

        if ($order_by) {
            $this->db->order_by($order_by, $order_dir);
        }

        return $this->db->get($table)->result_array();
    }
    //MARK: - Get Inactive Records
    public function get_inactive_records($table)
    {
        $this->db->where('is_active', 0);
        $this->db->order_by('store_id', 'DESC');
        return $this->db->get($table)->result_array();
    }

    //MARK: - Get Inactive Records
    public function get_unapproved_records($table)
    {
        $this->db->where('is_approve', 0);
        $this->db->order_by('store_id', 'DESC');
        return $this->db->get($table)->result_array();
    }
    //MARK: - Approve Record
    public function approve_record($table,$field, $where)
    {
        $data = array($field => 1);
        if($table == 'store'){
            $data['is_active'] = 1;
        }
        $this->db->where($where);
        if ($this->db->update($table, $data)) {
            return true;
        }
        return false;
    }
    //MARK: - Disable Record
    public function disable_record($table, $status_field, $where, $value = 0)
    {
        $data = [$status_field => $value];
        return $this->db->where($where)->update($table, $data);
    }
    //MARK: - Enable Record
    public function enable_record($table, $status_field, $where, $value = 1)
    {
        $data = [$status_field => $value];
        return $this->db->where($where)->update($table, $data);
    }
    //MARK: - List Active Categories
    public function listactivecategories()
    {
        $this->db->select('*');
        $this->db->from('categories');
        $this->db->where('is_active', 1);
        $this->db->order_by('category_name_en', 'ASC');
        $query = $this->db->get();
        return $query->result_array();
    }

    public function get_store_product_details($store_id,$productId)
    {
        $this->db->select('*');
        $this->db->from('store_wise_product_assign');
        $this->db->where('store_id', $store_id);
        $this->db->where('store_product_id', $productId);
        $query = $this->db->get();
        return $query->row_array();
    }
    public function get_base_quantity_product($store_id, $productId) {
        $this->db->select('GREATEST(FLOOR(MIN(variant_value)), 1) AS variant_value'); // Ensure min value is at least 1
        $this->db->from('store_variants');
        $this->db->where([
            'store_id' => $store_id,
            'store_product_id' => $productId
        ]);
        $query = $this->db->get();

        if ($query->num_rows() > 0) {
            return $query->row()->variant_value; // Return the minimum variant_value
        }
        return null; // Return null if no record found
    }


	public function fetchtopmenu()
	{

		$query		= "SELECT module.modulecode, module.moduleid, module.modulename,module.icon
                       FROM module
		               WHERE module.moduletype = 'Topmenu' AND module.is_active = 1";

		$query = $this->db->query($query);
		$rows=$this->db->affected_rows();
        if($rows >0)
        {
            return $query->result_array();
        }
        else
        {
            return ;
        }
	}
    public function fetcleftmenu()
	{

		$query		= "SELECT module.modulecode, module.moduleid, module.modulename,module.icon
                       FROM module
		               WHERE module.moduletype = 'Leftmenu' AND module.is_active = 1";

		$query = $this->db->query($query);
		$rows=$this->db->affected_rows();
        if($rows >0)
        {
            return $query->result_array();
        }
        else
        {
            return ;
        }
	}

    public function fetchaccessmodules($roleid)
    {
        // $query		= "SELECT privilege.mainModules
        //                FROM privilege
        //                WHERE privilege.roleid = '".$roleid."'";
        $query		= "SELECT module.modulecode, module.moduleid, module.modulename,module.icon
        FROM module
        WHERE module.moduletype = 'Topmenu' AND module.is_active = 1";
        $query = $this->db->query($query);
        $rows=$this->db->affected_rows();
        if($rows >0)
        {
        return $query->result_array();
        }
        else
        {
        return ;
        }
    }

    public function fetchuserDetails($roleID,$loginID)
    {
        $query="SELECT * from users";
        $query.=" WHERE userid='".$this->loginID."'";
        $query = $this->db->query($query);
        $rows = $this->db->affected_rows();

            if($rows!=0)
            {
                return $query->result_array();
            }
            else
            {
                return;

            }
    }


    public function fetch_notifications($login_user){
        $this->db->select('id,title');
		$this->db->from('notification');
		$this->db->where('reciever',$login_user );
		$this->db->where('status',0 );
		 $this->db->order_by('id','desc');

		$query = $this->db->get();
        return $query->result_array();
    }

    public function productsCount(){
        $query = $this->db->query("SELECT COUNT(*) AS product_count FROM product");
        $result = $query->row();
        return $result->product_count;
    }
    public function Clientscount(){
        $query = $this->db->query("SELECT COUNT(*) AS store_count FROM store");
        $result = $query->row();
        return $result->store_count;
    }

    public function pendingfollowup(){
        $today = date('Y-m-d');
        $after_30_days = date('Y-m-d', strtotime('+30 days'));
        // print_r( $after_30_days); exit;
        $this->db->select('store_id, store_name, next_followup_date'); // Select relevant columns
        $this->db->from('store');
        $this->db->where('next_followup_date =',$after_30_days);
        $query = $this->db->get();
        return $query->result_array();


        $this->db->select('id, name, email, next_followup_date');
        $this->db->from('clients');
        $this->db->where('next_followup_date >=', date('Y-m-d'));
        $this->db->where('next_followup_date <=', date('Y-m-d', strtotime('+30 days')));
        $query = $this->db->get();
        return $query->result_array();

        // $result = $query->row();
        // return $result->store_count;
    }



    public function completedOrder(){
         // Filter for completed orders
        $this->db->from('order'); // Specify the table
        $this->db->where('is_paid', 1);
        return $this->db->count_all_results();
    }


    public function todayOrder($logged_in_store_id){
        $today = date('Y-m-d');
        // Filter for completed orders
       $this->db->from('order'); // Specify the table
       $this->db->where('store_id',$logged_in_store_id);
       $this->db->where('Date(date)',$today);
       return $this->db->count_all_results();
   }

   public function totalAmount($logged_in_store_id){
    // $today = date('Y-m-d');
    // Filter for completed orders
    $this->db->select_sum('total_amount');
   $this->db->from('order'); // Specify the table
   $this->db->where('store_id',$logged_in_store_id);
   $query = $this->db->get();
   $result = $query->row();

   return $result->total_amount ?? 0;
//    $this->db->where('Date(date)',$today);
//    return $this->db->count_all_results();
}


public function todayAmount($logged_in_store_id){
    $today = date('Y-m-d');
    // Filter for completed orders
    $this->db->select_sum('total_amount');
   $this->db->from('order'); // Specify the table
   $this->db->where('store_id',$logged_in_store_id);
   $this->db->where('Date(date)',$today);
   $query = $this->db->get();
   $result = $query->row();

   return $result->total_amount ?? 0;
//    $this->db->where('Date(date)',$today);
//    return $this->db->count_all_results();
}


    public function pendingOrder(){
        // Filter for completed orders
       $this->db->from('order'); // Specify the table
       $this->db->where('is_paid', 0);
       return $this->db->count_all_results();
   }

    public function get_clients_total(){
        $this->db->select('*');
        $this->db->from('customer');
        $this->db->where('is_active',1);
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function get_admin_details_by_store_id($logged_in_store_id) {
        $this->db->select('*');
        $this->db->from('users');
        $this->db->where('store_id', $logged_in_store_id);
        $query = $this->db->get();
           return $query->row();
    }

}
?>