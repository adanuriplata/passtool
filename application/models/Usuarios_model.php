<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuarios_model extends CI_Model {

    public function login($username, $password){
        $this->db->where("user", $username);
        $this->db->where("pass", $password);

        $resultados = $this->db->get("users");
        if ($resultados->num_rows() > 0){
            return $resultados->row();
        }
        else{
            return false;
        }
    }
}
