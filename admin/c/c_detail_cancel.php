<?php
    if(isset($_SESSION['ss_admin'])){
        $user = $db->get('admin_staff',array('id'=>$_SESSION['ss_admin']));
        $noti = $db->get('order_main', array('status'=>0));
        $count_noti = $db->count('order_main', array('status'=>0));
        $mess = $db->get('rating', array('status'=>0));
        $count_mess = $db->count('rating', array('status'=>0));
        if($user[0]['lv']==1){
            $id = $_GET['id'];
            $data_cancel = $db->get('order_main',array('id'=>$id));
            $data_cancel_detail = $db->get('order_detail',array('order_id'=>$id));
        } else{
            header('location: ?controller=bill');
        } }
        else {
            header('location: ?controller=login');
        }
    require_once('./v/v_detail_bill.php');
?>