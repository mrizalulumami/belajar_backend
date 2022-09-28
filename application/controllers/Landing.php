<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Landing extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Landing');
    }

    public function index()
    {
        $data['data_gambar'] = $this->M_Landing->get_gambar();

        $this->load->view('landing_page/partial/header_landing'); //header
        $this->load->view('landing_page/partial/topbar_landing'); //top bar
        $this->load->view('landing_page/v_landing', $data); //halaman landing
        $this->load->view('landing_page/partial/footer_landing'); //footer
    }
    public function contoh()
    {

        $this->load->view('landing_page/partial/header_landing'); //header
        $this->load->view('landing_page/partial/topbar_landing'); //top bar
        $this->load->view('landing_page/v_contoh'); //halaman landing
        $this->load->view('landing_page/partial/footer_landing'); //footer
    }
}