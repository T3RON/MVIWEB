<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 05/04/2019
 * Time: 10:24 PM
 */

class Stars_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    function get_stars() {

        $this->db->order_by('stars_name', 'ASC');
        $stars_query = $this->db->get('stars');
        return $stars_query->result();

    }

    function add_stars($data_stars) {
        $this->db->insert('stars', $data_stars);
    }

    function add_movie_stars($data_movie_stars) {
        $this->db->insert('movie_stars', $data_movie_stars);
    }

    function add_series_stars($data_series_stars) {
        $this->db->insert('series_stars', $data_series_stars);
    }

    function del_stars($stars_id) {
        $this->db->delete('stars', array('stars_id' => $stars_id));
    }

    function update_stars($new_stars_name,$new_stars_sex,$stars_id,$stars_image) {
        $this->db->set('stars_name', $new_stars_name);
        $this->db->set('stars_sex', $new_stars_sex);
        $this->db->set('stars_image', $stars_image);
        $this->db->where('stars_id', $stars_id);
        $this->db->update('stars');
    }

}