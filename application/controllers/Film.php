<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Film extends MY_Controller {
    function __construct()
    {
        parent::__construct();
    }


    function movie()
    {

        $crud = new grocery_CRUD();

        $crud->set_table('mvi_movie');
        $crud->set_subject('فیلم');
        $crud->columns('movie_imdb','movie_country','movie_year','movie_name','movie_small_image');
        $crud->display_as('movie_name','عنوان فیلم');
        $crud->display_as('movie_imdb','رتبه');
        $crud->display_as('movie_country','کشور');
        $crud->display_as('movie_year','سال انتشار');
        $crud->display_as('movie_store','داستان');
        $crud->display_as('movie_lang','زبان');
        $crud->display_as('movie_age','سن');
        $crud->display_as('movie_time','زمان');
        $crud->display_as('movie_oscar','اسکار');
        $crud->display_as('movie_golden','گلدن گلوب');
        $crud->display_as('movie_topimdb_id','250 برتر');
        $crud->display_as('movie_quality','کیفیت');
        $crud->display_as('movie_small_image','تصویر کوچک');
        $crud->display_as('movie_larg_image','تصویر بزرگ');
        $crud->unset_texteditor('movie_name','full_text');
        $crud->unset_texteditor('movie_country','full_text');
        $crud->unset_texteditor('movie_store','full_text');
        $crud->unset_texteditor('movie_lang','full_text');
        $crud->unset_texteditor('movie_time','full_text');
        $crud->unset_texteditor('movie_oscar','full_text');
        $crud->unset_texteditor('movie_golden','full_text');
        $crud->unset_texteditor('movie_quality','full_text');
        $crud->set_field_upload('movie_small_image','assets/uploads/files');
        $crud->set_field_upload('movie_larg_image','assets/uploads/files');

        $crud->set_relation_n_n('بازیگران','mvi_movie_stars','mvi_stars','movie_id','stars_id','stars_name','stars_id');
        $crud->set_relation_n_n('کارگردانان','mvi_movie_director','mvi_director','movie_id','director_id','director_name','director_id');
        $crud->set_relation_n_n('ژانر','mvi_movie_genre','mvi_genre','movie_id','genre_id','genre_name','genre_id');

        $crud->add_action('لینک', '', 'Link/link/list','ui-icon-plus');

        $crud->unset_clone();
        $crud->unset_export();

        $output = $crud->render();

        $this->out_view($output);
    }
    function out_view($output = null) {
        $output->title = "فیلم";
        $this->load->view('pages/index',$output);

    }

}
