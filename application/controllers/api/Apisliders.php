<?php

use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';
require APPPATH . '/libraries/CreatorJwt.php';


class Apisliders extends REST_Controller
{
    function __construct() {
        parent:: __construct();
        $this->load->model('MY_Model');
        $this->objOfJwt = new CreatorJwt();
        header('Content-Type: application/json');

    }

    function all_get() {
        $result = $this->MY_Model->get_by_limit('sliders','10','sliders_title','DESC');
        if ($result) {
            $this->response($result,REST_Controller::HTTP_OK);
        }
    }

    public function LoginToken_get()
    {
        $tokenData['uniqueId'] = '11';
        $tokenData['role'] = 'alamgir';
        $tokenData['timeStamp'] = Date('Y-m-d h:i:s');
        $jwtToken = $this->objOfJwt->GenerateToken($tokenData);
        echo json_encode(array('Token'=>$jwtToken));
    }


}