<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Link extends MY_Controller {
    function __construct()
    {
        parent::__construct();
    }


    function link()
    {

        $crud = new grocery_CRUD();

        $crud->set_table('mvi_movie_link');
        $crud->set_subject('لینک فیلم');
        $crud->columns('movie_id','movie_link_size','movie_link_url','movie_link_info');
        $crud->display_as('movie_id','عنوان فیلم');
        $crud->display_as('movie_link_size','رتبه');
        $crud->display_as('movie_link_url','کشور');
        $crud->display_as('movie_link_info','سال انتشار');
        $crud->display_as('movie_link_sub','زیرنویس');

        $crud->unset_texteditor('movie_link_size','full_text');
        $crud->unset_texteditor('movie_link_url','full_text');
        $crud->unset_texteditor('movie_link_info','full_text');
        $crud->unset_texteditor('movie_link_sub','full_text');

        //$crud->set_relation('movie_id','mvi_movie','movie_name');

        $crud->set_relation_n_n('movie_id','mvi_movie_link','mvi_movie','movie_id','movie_id','movie_name','movie_id');

        $crud->where('mvi_movie_link.movie_id',$this->uri->segment(4));
        $crud->unset_clone();

        $output = $crud->render();

        $this->out_view($output);
    }
    function out_view($output = null) {
        $output->title = "لینک فیلم";
        $this->load->view('pages/index',$output);

    }

}