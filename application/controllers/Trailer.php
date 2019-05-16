<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 23/04/2019
 * Time: 05:40 AM
 */

class Trailer extends MY_Controller {
    function __construct()
    {
        parent::__construct();
    }


    function trailer()
    {

        $crud = new grocery_CRUD();




        $crud->set_table('mvi_trailer');
        $crud->set_subject('تریلر');



        $crud->columns('trailer_link','trailer_name','trailer_year');
        $crud->display_as('trailer_name','عنوان تریلر');
        $crud->display_as('trailer_store','داستان تریلر');
        $crud->display_as('trailer_year','سال انتشار');
        $crud->display_as('trailer_link','لینک تریلر');
        $crud->display_as('trailer_country','کشور');
        $crud->display_as('trailer_image','تصویر');



        $crud->unset_texteditor('trailer_name','full_text');
        $crud->unset_texteditor('trailer_store','full_text');
        $crud->unset_texteditor('trailer_year','full_text');
        $crud->unset_texteditor('trailer_link','full_text');
        $crud->unset_texteditor('trailer_country','full_text');


        $crud->set_field_upload('trailer_image','assets/uploads/files');


        $crud->callback_column('trailer_link',array($this,'_callback_webpage_url'));


        $crud->unset_clone();
        $crud->unset_export();
        $output = $crud->render();

        $this->out_view($output);
    }
    function out_view($output = null) {
        $output->title = "تریلر";
        $this->load->view('pages/index',$output);

    }
    function showImage($value) {
        return "<img src='http://localhost:8080/movie/assets/uploads/files/" . $value . "' width=50 height=50>";
    }
    public function _callback_webpage_url($value, $row)
    {
        $title = "لینک تریلر";
        //return "<a href='".$value."'>$title</a>";
        return "<video width=\"100\" height=\"100\" controls>
        <source src='".$value."' type=\"video/mp4\">
        Your browser does not support the video tag.
        </video>";
    }

}