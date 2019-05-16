<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 10/04/2019
 * Time: 12:21 AM
 */

class MY_Controller extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->library('ion_auth');
        $this->load->vars(array(
            'home_page' => FALSE
        ));
        $this->load->model('MY_Model');
        if (!$this->ion_auth->logged_in())
        {
            redirect('auth/login');
        }
    }



}