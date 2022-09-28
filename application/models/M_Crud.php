<?php

use LDAP\Result;

class M_Crud extends CI_Model
{

    public function get_data_by_nama_tabel($nama_tabel)
    {
        $hasil = $this->db->query("SELECT * FROM $nama_tabel");

        return $hasil->result_array(); //$a['kolom'];
        // return $hasil->result(); //$a->kolom;
    }
    public function get_data_by_nama($nama, $nama_tabel)
    {
        $hasil = $this->db->query("SELECT * FROM $nama_tabel
        WHERE nama='$nama'");
    }
    public function get_data_by_id($id, $nama_tabel)
    {
        $hasil = $this->db->query("SELECT * FROM $nama_tabel
        WHERE id='$id'");

        return $hasil->result_array();
    }
    public function kirim_data($data, $nama_tabel)
    {
        $this->db->set($data);
        $this->db->insert($nama_tabel);
    }
    public function edit_data($data, $nama_tabel, $id)
    {
        $this->db->set($data);
        $this->db->where('id', $id);
        $this->db->update($nama_tabel);
    }
    public function delete_data($nama_tabel, $id)
    {
        $this->db->where('id', $id);
        $this->db->delete($nama_tabel);
    }
}