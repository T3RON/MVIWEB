<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 07/04/2019
 * Time: 04:13 AM
 */

class Director extends MY_Controller {
    function __construct()
    {
        parent::__construct();
    }


    function director()
    {

        $crud = new grocery_CRUD();




        $crud->set_table('mvi_director');
        $crud->set_subject('کارگردانان');



        $crud->columns('director_name','director_sex','director_image');
        $crud->display_as('director_name','کارگردان');
        $crud->display_as('director_sex','جنسیت');
        $crud->display_as('director_image','تصویر');


        $crud->unset_texteditor('director_name','full_text');
        $crud->unset_texteditor('director_sex','full_text');
        $crud->unset_texteditor('director_image','full_text');

        $crud->set_relation('director_sex','mvi_sex','sex_name');

        $crud->set_field_upload('director_image','assets/uploads/files');




        $crud->unset_clone();
        $crud->unset_export();
        $output = $crud->render();

        $this->out_view($output);
    }
    function out_view($output = null) {
        $output->title = "کارگردانان";
        $this->load->view('pages/index',$output);

    }


}