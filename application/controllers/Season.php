<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Season extends MY_Controller {
   function __construct()
   {
       parent::__construct();
   }


    function season()
    {

        $crud = new grocery_CRUD();




        $crud->set_table('mvi_season');
        $crud->set_subject('فصل');

        $crud->set_relation('series_id','mvi_series','series_name');



        $crud->columns('series_id','season_name');
        $crud->display_as('series_id','سریال');
        $crud->display_as('season_name','فصل');
        $crud->display_as('season_number','شماره فصل');

        $crud->unset_texteditor('series_id','full_text');
        $crud->unset_texteditor('season_name','full_text');
        $crud->unset_texteditor('season_number','full_text');


//        $crud->set_relation_n_n('بازیگران','mvi_movie_stars','mvi_stars','movie_id','stars_id','stars_name','stars_id');
//        $crud->set_relation_n_n('کارگردانان','mvi_movie_director','mvi_director','movie_id','director_id','director_name','director_id');
//        $crud->set_relation_n_n('ژانر','mvi_movie_genre','mvi_genre','movie_id','genre_id','genre_name','genre_id');
        $crud->unset_clone();
        $crud->unset_export();

        $crud->add_action('اپیزودها', '', 'Episodes/episodes/list','ui-icon-plus');
        $crud->add_action('افزودن اپیزود', '', 'Episodes/episodes/add','ui-icon-image');

        $crud->where('mvi_season.series_id',$this->uri->segment(4));
        $output = $crud->render();

        $this->out_view($output);
    }
    function out_view($output = null) {
        $output->title = "فصل";
        $this->load->view('pages/index',$output);

    }

}
