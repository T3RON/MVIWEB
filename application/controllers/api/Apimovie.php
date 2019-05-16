<?php

use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';


class Apimovie extends REST_Controller
{
    function __construct() {
        parent:: __construct();
        $this->load->model('Film_model');

    }

    function all_get() {
        $result = $this->Film_model->get_movie_and_image();
        if ($result) {
            $this->response($result,REST_Controller::HTTP_OK);
        }
    }

    function single_post() {
        $movie_id = $this->input->post("movie_id");
        $result = $this->Film_model->get_movie_and_image_single($movie_id);
        if ($result) {
            $this->response($result,REST_Controller::HTTP_OK);
        }
    }




}