<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Boveda_model extends CI_Model {

    public function getBoveda($id_usuario){
        $this->db->where("id_user", $id_usuario);
        $resultados = $this->db->get("accounts");
        return $resultados->result();
    }
}
