<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Series extends MY_Controller {
    function __construct()
    {
        parent::__construct();
    }


    function series()
    {

        $crud = new grocery_CRUD();

        $crud->set_table('mvi_series');
        $crud->set_subject('سریال');
        $crud->columns('series_name','series_imdb','series_country','series_year');
        $crud->display_as('series_name','عنوان فیلم');
        $crud->display_as('series_imdb','رتبه');
        $crud->display_as('series_country','کشور');
        $crud->display_as('series_year','سال انتشار');
        $crud->display_as('series_store','داستان');
        $crud->display_as('series_lang','زبان');
        $crud->display_as('series_age','سن');
        $crud->display_as('series_time','زمان');
        $crud->display_as('series_oscar','اسکار');
        $crud->display_as('series_golden','گلدن گلوب');
        $crud->display_as('series_topimdb_id','250 برتر');
        $crud->display_as('series_quality','کیفیت');
        $crud->display_as('series_small_image','تصویر کوچک');
        $crud->display_as('series_larg_image','تصویر بزرگ');
        $crud->unset_texteditor('series_name','full_text');
        $crud->unset_texteditor('series_country','full_text');
        $crud->unset_texteditor('series_lang','full_text');
        $crud->unset_texteditor('series_time','full_text');
        $crud->unset_texteditor('series_oscar','full_text');
        $crud->unset_texteditor('series_golden','full_text');
        $crud->unset_texteditor('series_quality','full_text');
        $crud->unset_texteditor('series_year','full_text');
        $crud->set_field_upload('series_small_image','assets/uploads/files');
        $crud->set_field_upload('series_larg_image','assets/uploads/files');
        $crud->unset_clone();
        $crud->set_relation_n_n('بازیگران','mvi_series_stars','mvi_stars','series_id','stars_id','stars_name','stars_id');
        $crud->set_relation_n_n('کارگردانان','mvi_series_director','mvi_director','series_id','director_id','director_name','director_id');
        $crud->set_relation_n_n('ژانر','mvi_series_genre','mvi_genre','series_id','genre_id','genre_name','genre_id');
        $crud->add_action('فصل', '', 'Season/season/list','ui-icon-plus');
        $output = $crud->render();

        $this->out_view($output);
    }
    function out_view($output = null) {
        $output->title = "سریال";
        $this->load->view('pages/index',$output);

    }

}