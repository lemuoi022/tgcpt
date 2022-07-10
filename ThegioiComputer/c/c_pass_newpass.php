<?php
    if(isset($_POST['submit-newpass'])){
        $id = $_POST['id'];
        $password = $_POST['password'];
        $password2 = $_POST['password2'];
        $newpass = $db->update('user_guest',array('password'=>$password, 'password2'=>$password2),array('id'=>$id));
        $error = array();
        if($password2 != $password){
            $error['password2'] = "Mật khẩu nhập lại không khớp";
        }
        if($newpass){
            require_once('./v/v_login.php');
        }
    }
	require_once('./v/v_newpass.php');
?>