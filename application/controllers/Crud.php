<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Crud extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Crud');
    }

    public function index()
    {
        $data['title'] = "Landing Page";
        $data['balita'] = $this->M_Crud->get_data_by_nama_tabel("tabel_balita");
        $this->load->view('landing/halaman_utama', $data);
    }
    public function send_email()
    {
        $data['title'] = "Send Message Page";
        $this->load->view('landing/halaman_send_email', $data);
    }
    public function hal_tambah_data()
    {
        $data['title'] = "Tambah Data";
        $this->load->view('landing/halaman_tambah_data', $data);
    }
    public function hal_edit_balita($id)
    {
        $data['title'] = "Edit Data Balita";
        $data['e_balita'] = $this->M_Crud->get_data_by_id($id, "tabel_balita");
        $this->load->view('landing/hal_edit_balita', $data);
    }
}