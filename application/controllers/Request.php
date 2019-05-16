<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 19/04/2019
 * Time: 09:24 AM
 */

class Request extends MY_Controller {
    function __construct()
    {
        parent::__construct();
    }


    function request()
    {

        $crud = new grocery_CRUD();




        $crud->set_table('mvi_request');
        $crud->set_subject('درخواست های فیلم و سریال');



        $crud->columns('request_state_id','request_date','id','request_name');
        $crud->display_as('request_name','عنوان درخواست');
        $crud->display_as('id','کاربر');
        $crud->display_as('request_date','تاریخ درخواست');
        $crud->display_as('request_state_id','وضعیت درخواست');


        $crud->set_relation('id','mvi_users','username');
        $crud->set_relation('request_state_id','request_state','request_state_name');




        $crud->unset_fields(array('u_id','request_date','request_text','request_name'));

        $crud->unset_clone();
        $crud->unset_add();

        $crud->unset_export();
        $output = $crud->render();

        $this->out_view($output);
    }
    function out_view($output = null) {
        $output->title = "درخواست های فیلم و سریال";
        $this->load->view('pages/index',$output);

    }


}