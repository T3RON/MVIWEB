<?php

use Restserver\Libraries\REST_Controller;
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . 'libraries/REST_Controller.php';
require APPPATH . 'libraries/Format.php';



class Users extends REST_Controller {

    function __construct() {
        parent:: __construct();
        $this->load->model('users_model');
    }



    function register_post() {

        $u_name = $this->post('u_name');
        $u_pass = $this->post('u_pass');
        $u_number = $this->post('u_number');
        $u_email = $this->post('u_email');
        $u_state = $this->post('u_state');
        $u_type = $this->post('u_type');
        $u_img = $this->post('u_img');
        $u_buidnumber = $this->post('u_buidnumber');
        $u_activecode = $this->post('u_activecode');

        $user_registration = $this->users_model->register($u_name,$u_pass,$u_number,$u_email,$u_state,$u_type,$u_img,$u_buidnumber,$u_activecode);
        if ($user_registration) {
            $this->response(array('status'=>$user_registration,'message'=>'Register Success'),REST_Controller::HTTP_OK);
        }else {
            $this->response(array('status'=>$user_registration,'message'=>'Register Error'),REST_Controller::HTTP_OK);
        }

    }

    function login_post() {
        $u_name = $this->post('u_name');
        $u_pass = $this->post('u_pass');
        $user_login = $this->users_model->logins($u_name,$u_pass);
        if (!$user_login) {
            $this->response(array('status'=>$user_login,'message'=>'Wrong Email or Password'),REST_Controller::HTTP_OK);
        }else {
            $this->response(array('status'=>$user_login,'message'=>'Login Success' , 'response'=>$user_login),REST_Controller::HTTP_OK);
        }
    }



}