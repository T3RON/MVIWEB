<?php

use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';


class Apiseries extends REST_Controller
{
    function __construct() {
        parent:: __construct();
        $this->load->model('Series_model');

    }

    function all_get() {
        $result = $this->Series_model->get_series_and_image();
        if ($result) {
            $this->response($result,REST_Controller::HTTP_OK);
        }
    }


}