<?php
/**
 * Created by PhpStorm.
 * User: acer
 * Date: 06/04/2019
 * Time: 11:55 PM
 */

class Genre extends MY_Controller
{
    function __construct()
    {
        parent::__construct();

    }

    function genre()
    {

        $crud = new grocery_CRUD();

        $crud->set_table('mvi_genre');
        $crud->set_subject('ژانر');
        $crud->columns('genre_name');
        $crud->display_as('genre_name','ژانــر');

        $crud->unset_export();
        $crud->unset_clone();


        $output = $crud->render();

        $this->out_view($output);
    }
    function out_view($output = null) {
        $output->title = "ژانر";
        $this->load->view('pages/index',$output);
    }
}