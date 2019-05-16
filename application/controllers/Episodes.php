<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 5/1/2019
 * Time: 11:55 PM
 */

class Episodes extends MY_Controller {
    function __construct()
    {
        parent::__construct();
    }


    function episodes()
    {

        $crud = new grocery_CRUD();




        $crud->set_table('mvi_episodes');
        $crud->set_subject('اپیزود');
        $crud->where('mvi_episodes.season_id',$this->uri->segment(4));



        $crud->set_relation('series_id','mvi_series','series_name');
        $crud->set_relation('season_id','mvi_season','season_name',array('season_id' => $this->uri->segment(4)));
        $crud->set_relation('quality_id','mvi_quality','quality_name');



        $crud->columns('series_id','season_id','episodes_name');
        $crud->display_as('series_id','سریال');
        $crud->display_as('season_id','فصل');
        $crud->display_as('episodes_name','قسمت');
        $crud->display_as('episodes_url','آدرس قسمت');
        $crud->display_as('episodes_sub','زیرنویس');
        $crud->display_as('quality_id','کیفیت');
        $crud->display_as('episodes_time','زمان');

        $crud->unset_texteditor('series_id','full_text');
        $crud->unset_texteditor('season_id','full_text');
        $crud->unset_texteditor('episodes_name','full_text');
        $crud->unset_texteditor('episodes_url','full_text');
        $crud->unset_texteditor('episodes_sub','full_text');
        $crud->unset_texteditor('episodes_time','full_text');


        $crud->unset_clone();
        $crud->unset_export();
        $output = $crud->render();

        $this->out_view($output);
    }
    function out_view($output = null) {
        $output->title = "اپیزود";
        $this->load->view('pages/index',$output);

    }

}
