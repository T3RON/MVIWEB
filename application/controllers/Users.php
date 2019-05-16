<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 4/29/2019
 * Time: 2:47 AM
 */

class Users extends MY_Controller {
    function __construct()
    {
        parent::__construct();
    }


    function users()
    {

        $crud = new grocery_CRUD();




        $crud->set_table('mvi_user');
        $crud->set_subject('کاربران');



        $crud->columns('u_name','u_number','u_email','u_state');
        $crud->display_as('u_name','نام کاربری');
        $crud->display_as('u_pass','رمز عبور');
        $crud->display_as('u_number','شماره تماس');
        $crud->display_as('u_email','ایمیل');
        $crud->display_as('u_state','وضعیت');
        $crud->display_as('u_type','نوع کاربری');
        $crud->display_as('u_img','تصویر پروفایل');
        $crud->display_as('u_buidnumber','بیلد نامبر گوشی');
        $crud->display_as('u_activecode','آخرین کد فعال سازی');


        $crud->unset_texteditor('u_name','full_text');
        $crud->unset_texteditor('u_pass','full_text');
        $crud->unset_texteditor('u_number','full_text');
        $crud->unset_texteditor('u_state','full_text');
        $crud->unset_texteditor('u_type','full_text');
        $crud->unset_texteditor('u_email','full_text');
        $crud->unset_texteditor('u_img','full_text');
        $crud->unset_texteditor('u_buidnumber','full_text');
        $crud->unset_texteditor('u_activecode','full_text');


        $crud->set_relation('u_type','mvi_user_type','user_type_name');

        $crud->set_field_upload('u_img','assets/uploads/files');


        $crud->callback_column('u_img',array($this,'showImage'));


        $crud->unset_clone();
        $crud->unset_export();
        $output = $crud->render();

        $this->out_view($output);
    }
    function out_view($output = null) {
        $output->title = "کاربران";
        $this->load->view('pages/index',$output);

    }
    function showImage($value) {
        return "<img src='http://localhost:8080/movie/assets/uploads/files/" . $value . "' width=50 height=50>";
    }

}