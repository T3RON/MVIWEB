<?php


class MY_Model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    public function get_by_limit($tbl,$limit,$order_name,$order_type) {
        $this->db->select('*');
        $this->db->from($tbl);
        $this->db->limit($limit);
        $this->db->order_by($order_name, $order_type);
        $movie_query = $this->db->get();
        return $movie_query->result();
    }
}

