<?php

class Users_model extends CI_Model {
    function __construct()
    {
        parent::__construct();
    }

    function register($u_name,$u_pass,$u_number,$u_email,$u_state,$u_type,$u_img,$u_buidnumber,$u_activecode) {
        $arraySave = array(
            'u_name' => $u_name,
            'u_pass'=>password_hash($u_pass,PASSWORD_BCRYPT),
            'u_number'=>$u_number,
            'u_email'=>$u_email,
            'u_state'=>$u_state,
            'u_type'=>$u_type,
            'u_img'=>$u_img,
            'u_buidnumber'=>$u_buidnumber,
            'u_activecode'=>$u_activecode

        );
        $result = $this->db->insert("mvi_user",$arraySave);
        if ($result){
            return true;
        }else {
            return false;
        }
    }


    function logins($u_name,$u_pass) {
        $this->db->where('u_name',$u_name);
        $this->db->limit(1);
        $login_query = $this->db->get('mvi_user');
        if ($login_query->num_rows() > 0) {
            $row = $login_query->row();
            if (password_verify($u_pass,$row->u_pass)) {
                $data[] = array('u_email'=>$row->u_email,'u_number'=>$row->u_number);
                return $data;
            }else {
                return false;
            }
        }else {
            return false;
        }
    }
}
