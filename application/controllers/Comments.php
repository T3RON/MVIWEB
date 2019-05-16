<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Comments extends MY_Controller {
    function __construct()
    {
        parent::__construct();
    }


    function index()
    {

        $crud = new grocery_CRUD();

        $crud->set_table('mvi_comments');
        $crud->set_subject('نظرات');
        $crud->columns('comment_state_id','id','comments_date','product_id','product_id_type');
        $crud->display_as('product_id','مربوط به');
        $crud->display_as('comments_date','تاریخ');
        $crud->display_as('id','کاربر');
        $crud->display_as('comments_text','متن');
        $crud->display_as('comment_state_id','وضیعت');

        $crud->unset_texteditor('product_id','full_text');
        $crud->unset_texteditor('comments_date','full_text');
        $crud->unset_texteditor('us_id','full_text');
        $crud->unset_texteditor('comments_text','full_text');
        $crud->unset_texteditor('comment_state_id','full_text');

        $crud->set_relation('id','mvi_users','username');
        $crud->set_relation('product_id','mvi_product','product_name');
        $crud->set_relation('comment_state_id','mvi_comment_state','comment_state_name');



        $crud->unset_clone();
        $crud->unset_export();
        $crud->unset_add();

        $output = $crud->render();

        $this->out_view($output);
    }
    function out_view($output = null) {
        $output->title = "نظرات";
        $this->load->view('pages/index',$output);

    }


}
