<?php 
if(isset($_SESSION['ss_admin'])){
    $noti = $db->get('order_main', array('status'=>0));
    $count_noti = $db->count('order_main', array('status'=>0));
    $mess = $db->get('rating', array('status'=>0));
    $count_mess = $db->count('rating', array('status'=>0));
    $user = $db->get('admin_staff', array('id'=>$_SESSION['ss_admin']));
    $data_warehouse = $db->get('product',array());
}

require_once('./v/v_warehouse.php');
?>