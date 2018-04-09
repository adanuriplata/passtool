<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model("Usuarios_model");
}

    public function index()
    {
        $this->load->view('layouts/header');
        $this->load->view('admin/login');
    }


    public function login() {
        $username = $this->input->post("username");
        $password = $this->input->post("password");
        $resu = $this->Usuarios_model->login($username, sha1($password));

        if (!$resu) {
            $this->session->set_flashdata("error", "Nombre y/o Password incorrecto");
            $this->session->set_flashdata("error","<div class=\"warning\"><i class=\"fas fa-exclamation-triangle\"></i><p class=\"login__form__error\">Nombre y/o Password incorrecto</p></div>");
            redirect(base_url());
        }
        else {
            $data = array(
                'id' => $resu->id_user,
                'nombre' => $resu->user_name,
                'apellido' => $resu->user_last_name,
                'avatar' => $resu->user_avatar,
                'rol' => $resu->role,
                'login' => TRUE
            );

            $this->session->set_userdata($data);
            redirect(base_url()."dashboard");
        }
    }

    public function logout() {
        $this->session->sess_destroy();
        redirect(base_url());
    }
}
