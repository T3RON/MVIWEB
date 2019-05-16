<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 08/04/2019
 * Time: 10:34 PM
 */

class Series_model extends CI_Model
{

    function __construct()
    {
        parent::__construct();
        $this->load->database();

    }


    function form_insert($data){
        $this->db->insert('series', $data);
    }


    public function get_series_and_image () {
        $query = $this->db->query("SELECT mvi_series.*, mvi_images.image_small_url FROM mvi_series INNER JOIN mvi_images ON mvi_series.series_id = mvi_images.series_id");
        return $query->result();
    }

    public function get_series($limit, $start) {
        $this->db->select('*');
        $this->db->from('series');
        $this->db->join('images', 'images.series_id = series.series_id');
        $this->db->limit($limit, $start);
        $this->db->order_by('series_year', 'ASC');
        $movie_query = $this->db->get();
        return $movie_query->result();
    }

}