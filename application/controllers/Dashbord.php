<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Created by PhpStorm.
 * User: acer
 * Date: 10/05/2019
 * Time: 02:54 PM
 */

class Dashbord extends MY_Controller
{
    function __construct()
    {
        parent::__construct();

    }
    function index() {
        $this->load->vars(array(
            'home_page' => TRUE
        ));
        $this->load->view('pages/dashbord');
    }
}