<?php

class Film_model extends CI_Model {

    function __construct()
    {
        parent::__construct();
        $this->load->database();

    }

    function form_insert($data){
        $this->db->insert('movie', $data);
    }



    function del_movie($movie_id) {
        $this->db->delete('movie', array('movie_id' => $movie_id));
        $this->db->delete('movie_director', array('movie_id' => $movie_id));
        $this->db->delete('movie_genre', array('movie_id' => $movie_id));
        $this->db->delete('movie_stars', array('movie_id' => $movie_id));
    }

    function update_movie($movie_id,
                           $new_movie_name,
                           $new_movie_year,
                           $new_movie_store,
                           $new_movie_lang,
                           $new_movie_time,
                           $new_movie_age,
                           $new_movie_topimdb_id,
                           $new_movie_oscar,
                           $new_movie_golden) {

        $this->db->set('movie_name', $new_movie_name);
        $this->db->set('movie_year', $new_movie_year);
        $this->db->set('movie_store', $new_movie_store);
        $this->db->set('movie_lang', $new_movie_lang);
        $this->db->set('movie_time', $new_movie_time);
        $this->db->set('movie_age', $new_movie_age);
        $this->db->set('movie_topimdb_id', $new_movie_topimdb_id);
        $this->db->set('movie_oscar', $new_movie_oscar);
        $this->db->set('movie_golden', $new_movie_golden);
        $this->db->where('movie_id', $movie_id);
        $this->db->update('movie');
    }

    public function get_count() {
        return $this->db->count_all('movie');
    }

    public function get_movie($limit, $start) {
        $this->db->select('*');
        $this->db->from('movie');
        $this->db->join('images', 'images.movie_id = movie.movie_id');
        $this->db->limit($limit, $start);
        $this->db->order_by('movie_year', 'ASC');
        $movie_query = $this->db->get();
        return $movie_query->result();
    }


    public function search_movie($search_movie) {
        $this->db->like('movie_name', $search_movie);
        $query = $this->db->get('movie');
        return $query->result();

    }


    public function get_movie_and_image () {
        $this->db->select('*');
        $this->db->from('movie');
        $this->db->join('images', 'images.movie_id = movie.movie_id');
        $this->db->order_by('movie.movie_id', 'DESC');
        $query = $this->db->get();

        return $query->result();
    }

    public function get_movie_and_image_single ($movie_id) {
        $this->db->select('*');
        $this->db->from('movie');
        $this->db->join('movie_link', 'movie_link.movie_id = movie.movie_id');
        $this->db->join('images', 'images.movie_id = movie.movie_id');
        $this->db->order_by('movie_year', 'ASC');
        $this->db->where('movie.movie_id', $movie_id);
        $query = $this->db->get();
        return $query->result();
    }





}