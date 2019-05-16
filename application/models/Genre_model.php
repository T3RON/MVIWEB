<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 04/04/2019
 * Time: 04:44 AM
 */

class Genre_model extends CI_Model {

    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    function get_genre() {
        $this->db->order_by('genre_name', 'ASC');
        $genre_query = $this->db->get('genre');
        return $genre_query->result();
    }

    function add_genre($data_genre) {
        $this->db->insert('genre', $data_genre);
    }

    function add_movie_genre($data_movie_genre) {
        $this->db->insert('movie_genre', $data_movie_genre);
    }

    function add_series_genre($data_series_genre) {
        $this->db->insert('series_genre', $data_series_genre);
    }

    function del_genre($genre_id) {
        $this->db->delete('genre', array('genre_id' => $genre_id));
    }

    function update_genre($new_genre,$genre_id) {
        $this->db->set('genre_name', $new_genre);
        $this->db->where('genre_id', $genre_id);
        $this->db->update('genre');
    }



}