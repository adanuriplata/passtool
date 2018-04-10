<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Boveda extends CI_Controller {

    public function __construct() {
        parent::__construct();
        if (!$this->session->userdata("login")){
            redirect(base_url());
        }
        $this->load->model('Boveda_model');
    }

    public function index()
    {
        $id_usuario = $this->session->userdata("id");
        $data = array(
          'cuentas' => $this->Boveda_model->getBoveda($id_usuario),
        );

        $this->load->view('layouts/header');
        $this->load->view('layouts/sidebar');
        $this->load->view('users/dashboard');
        $this->load->view('users/boveda', $data);
        $this->load->view('layouts/footer');

    }

    public function add() {
//        $data = array(
//            'accounts' => $this->Boveda_model->getCategoria($id),
//        );
        $this->load->view('layouts/header');
        $this->load->view('layouts/sidebar');
        $this->load->view('users/boveda/add');
        $this->load->view('layouts/footer');
    }

    public function edit($id) {
        $data = array(
            'accounts' => $this->Boveda_model->getCategoria($id),
        );
        $this->load->view('layouts/header');
        $this->load->view('users/boveda/edit', $data);
        $this->load->view('layouts/footer');
    }
}