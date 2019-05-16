<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 07/04/2019
 * Time: 10:22 PM
 */

class Stars extends MY_Controller {
    function __construct()
    {
        parent::__construct();
    }


    function stars()
    {

        $crud = new grocery_CRUD();




        $crud->set_table('mvi_stars');
        $crud->set_subject('ستارگان');



        $crud->columns('stars_image','stars_name','stars_sex');
        $crud->display_as('stars_name','کارگردان');
        $crud->display_as('stars_sex','جنسیت');
        $crud->display_as('stars_image','تصویر');


        $crud->unset_texteditor('stars_name','full_text');
        $crud->unset_texteditor('stars_sex','full_text');
        $crud->unset_texteditor('stars_image','full_text');

        $crud->set_relation('stars_sex','mvi_sex','sex_name');

        $crud->set_field_upload('stars_image','assets/uploads/files');


        $crud->callback_column('stars_image',array($this,'showImage'));


        $crud->unset_clone();
        $crud->unset_export();
        $output = $crud->render();

        $this->out_view($output);
    }
    function out_view($output = null) {
        $output->title = "ستارگان";
        $this->load->view('pages/index',$output);

    }
    function showImage($value) {
        return "<img src='http://localhost:8080/movie/assets/uploads/files/" . $value . "' width=50 height=50>";
    }

}