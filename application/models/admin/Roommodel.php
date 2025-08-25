 <?php
class Roommodel extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function insert($data){
        $this->db->insert('store_table', $data);
    }

    public function listrooms($store_id){
        $this->db->select('*');
        $this->db->from('store_table');
        $this->db->where('ttype','rom');
        $this->db->where('is_active', 1);
        $this->db->where('store_id',$store_id);
        $this->db->order_by("table_id", "asc");
        $query = $this->db->get();
        return $query->result_array();
    }

    public function count_rooms($store_id){
        $this->db->select('*');
        $this->db->from('store_table');
        $this->db->where('store_id', $store_id);
        $this->db->where('ttype','rom');
        $query = $this->db->get();
        return $query->num_rows();
    }

    public function DeleteRoom($id){
        $this->db->where('table_id', $id);
		$this->db->delete('store_table');
        return true;
    }

    public function UpdateRoom($tableid,$store_table_name){
        $this->db->set('store_table_name', $store_table_name);
        $this->db->where('table_id', $tableid);
        $this->db->where('ttype', 'rom');
        $this->db->update('store_table');
    }

    // list of rooms in order dashboard
    public function getRoomsByStoreId($store_id) {
    $this->db->select('store_table.*');
    $this->db->from('store_table');
    $this->db->join('order', 'order.table_id = store_table.table_id', 'inner'); // join to orders
    $this->db->where('store_table.store_id', $store_id);
    $this->db->where('store_table.ttype', 'rom');
    $this->db->order_by("store_table.table_id", "asc");
    $this->db->group_by('store_table.table_id'); // avoid duplicate rows if multiple orders
    $query = $this->db->get();
    return $query->result_array();
}

    // 	public function getRoomsByStoreId($store_id){
	// 	$this->db->select('*');
	// 	$this->db->from('store_table');
	// 	$this->db->where('store_id',$store_id );
	// 	$this->db->where('ttype', 'rom');
	// 	$this->db->order_by("table_id", "asc");
	// 	$query = $this->db->get();
	// 	//echo $this->db->last_query();exit;
	// 	return $query->result_array();
	// }

}?>