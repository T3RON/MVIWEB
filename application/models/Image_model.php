<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 06/04/2019
 * Time: 02:03 AM
 */

class Image_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }

    function add_movie_image($data_movie_image) {
        $this->db->insert('images', $data_movie_image);
    }



}