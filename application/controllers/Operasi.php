<?php
defined('BASEPATH') or exit('No direct script access allowed');
require FCPATH . 'vendor/autoload.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class Operasi extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_Crud');
        $this->load->library('form_validation');
        // $this->load->library('email');
    }

    public function add_data()
    {
        // harus terisi
        $this->form_validation->set_rules('nama', 'nama', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->library('form_validation');

            redirect('crud/hal_tambah_data');
        } else {

            $nama = $_POST['nama'];
            $umur = $_POST['umur'];
            $tbadan = $_POST['tbadan'];
            $berat = $_POST['berat'];
            $jk = $_POST['jk'];

            $data_input = [
                'nama' => $nama,
                'umur' => $umur,
                'tingg' => $tbadan,
                'berat_badan' => $berat,
                'jenis_kelamin' => $jk
            ];

            $kirim = $this->M_Crud->kirim_data($data_input, "tabel_balita");
            redirect('crud');
        }
    }
    public function send_email()
    {
        // harus terisi
        $this->form_validation->set_rules('emailtuju', 'emailtuju', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->library('form_validation');

            redirect('crud/send_email');
        } else {
            $emailtuju = $_POST['emailtuju'];
            $sub = $_POST['sub'];
            $message = $_POST['message'];

            //Create an instance; passing `true` enables exceptions
            $mail = new PHPMailer(true);

            try {
                //Server settings
                $mail->SMTPDebug = 2;                                     //Enable verbose debug output
                $mail->isSMTP();                                          //Send using SMTP
                $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
                $mail->SMTPAuth   = true;                                 //Enable SMTP authentication
                $mail->Username   = 'mrizalulumami@gmail.com';            //SMTP username
                $mail->Password   = 'avpjfeekfuvimrej';                   //SMTP password
                $mail->SMTPSecure = 'tls';            //Enable implicit TLS encryption
                $mail->Port       = 587;              //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

                //pengirim
                $mail->setFrom('email@gmail.com', 'mrizalulumami@gmail.com');
                $mail->addAddress($emailtuju);     //Add a recipient

                //Content
                $mail->isHTML(true); //Set email format to HTML
                $mail->Subject = $sub;
                $mail->Body    = $message;
                $mail->AltBody = '';
                //$mail->AddEmbeddedImage('gambar/logo.png', 'logo'); //abaikan jika tidak ada logo
                //$mail->addAttachment(''); 

                $mail->send();
                $this->session->set_flashdata("email_sent", "Congratulation Email Send Successfully.");
                redirect('crud/send_email');
            } catch (Exception $e) {
                $this->session->set_flashdata("email_sent", "$e");
                redirect('crud/send_email');
            }
        }
    }
    public function edit_balita()
    {
        // harus terisi
        $this->form_validation->set_rules('id', 'id', 'required');
        $this->form_validation->set_rules('nama', 'nama', 'required');

        if ($this->form_validation->run() == false) {
            $this->load->library('form_validation');

            redirect('crud/hal_tambah_data');
        } else {

            $id = $_POST['id'];

            $nama = $_POST['nama'];
            $umur = $_POST['umur'];
            $tbadan = $_POST['tbadan'];
            $berat = $_POST['berat'];
            $jk = $_POST['jk'];

            $data_input = [
                'nama' => $nama,
                'umur' => $umur,
                'tingg' => $tbadan,
                'berat_badan' => $berat,
                'jenis_kelamin' => $jk
            ];

            $kirim = $this->M_Crud->edit_data($data_input, "tabel_balita", $id);
            redirect('crud');
        }
    }
    public function delete_balita($id)
    {
        $this->M_Crud->delete_data("tabel_balita", $id);
        redirect('crud');
    }
}