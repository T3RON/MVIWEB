<?php

use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';


class Apitriler extends REST_Controller
{
    function __construct() {
        parent:: __construct();
        $this->load->model('MY_Model');

    }

    function all_get() {
        $result = $this->MY_Model->get_data_without_limit('trailer_id','DESC','trailer');
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