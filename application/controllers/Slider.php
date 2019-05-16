<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 19/04/2019
 * Time: 09:24 AM
 */

class Slider extends MY_Controller {
    function __construct()
    {
        parent::__construct();
    }


    function slider()
    {

        $crud = new grocery_CRUD();




        $crud->set_table('mvi_sliders');
        $crud->set_subject('اسلایدر');



        $crud->columns('image_url','sliders_title','sliders_type');
        $crud->display_as('movie_id','متتصل به فیلم');
        $crud->display_as('series_id','متصل به سریال');
        $crud->display_as('image_url','پوستر اسلایدر');
        $crud->display_as('sliders_title','عنوان اسلایدر');
        $crud->display_as('sliders_type','توضیحات اسلایدر');


        $crud->unset_texteditor('movie_id','full_text');
        $crud->unset_texteditor('series_id','full_text');
        $crud->unset_texteditor('image_url','full_text');
        $crud->unset_texteditor('sliders_title','full_text');
        $crud->unset_texteditor('sliders_type','full_text');

        $crud->set_relation('movie_id','mvi_movie','movie_name');
        $crud->set_relation('series_id','mvi_series','series_name');

        $crud->set_field_upload('image_url','assets/uploads/files');


        $crud->callback_column('image_url',array($this,'showImage'));


        $crud->unset_clone();
        $crud->unset_export();
        $output = $crud->render();

        $this->out_view($output);
    }
    function out_view($output = null) {
        $output->title = "اسلایدر";
        $this->load->view('pages/index',$output);

    }
    function showImage($value) {
        return "<img src='http://localhost:8080/movie/assets/uploads/files/" . $value . "' width=50 height=50>";
    }

}