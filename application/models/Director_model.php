<?php


class Director_Model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    function get_director() {
        $this->db->order_by('director_name', 'ASC');
        $director_query = $this->db->get('director');
        return $director_query->result();
    }

    function add_director($data_director) {
        $this->db->insert('director', $data_director);
    }

    function add_movie_director($data_movie_director) {
        $this->db->insert('movie_director', $data_movie_director);
    }

    function add_series_director($data_series_director) {
        $this->db->insert('series_director', $data_series_director);
    }

    function del_director($director_id) {
        $this->db->delete('director', array('director_id' => $director_id));
    }

    function update_director($new_director_name,$new_director_sex,$director_id,$director_image) {
        $this->db->set('director_name', $new_director_name);
        $this->db->set('director_sex', $new_director_sex);
        $this->db->set('director_image', $director_image);
        $this->db->where('director_id', $director_id);
        $this->db->update('director');
    }

}