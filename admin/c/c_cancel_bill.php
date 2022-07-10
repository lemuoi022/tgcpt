<?php 
if (isset($_SESSION['ss_admin'])) {
    $noti = $db->get('order_main', array('status' => 0));
    $count_noti = $db->count('order_main', array('status' => 0));
    $mess = $db->get('rating', array('status'=>0));
    $count_mess = $db->count('rating', array('status' => 0));
    $user = $db->get('admin_staff', array('id' => $_SESSION['ss_admin']));
    $data_cancel_not_done = $db->get('cancel_order', array('status' => 2));
    $data_cancel_done = $db->get('cancel_order', array('status' => 1));
    $data_cancel = $db->get('cancel_order', array('status' => 0));
} else {
    header('location: ?controller=login');
}
require_once('./v/v_cancel_bill.php');
?>