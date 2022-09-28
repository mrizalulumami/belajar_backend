<?php

class M_Landing extends CI_Model
{

    public function get_gambar()
    {
        $hasil = $this->db->query("SELECT * FROM content_gambar");
        return $hasil->result_array();
    }
}