<?php
if (isset($_SESSION['ss_admin'])) {
    $noti = $db->get('order_main', array('status' => 0));
    $count_noti = $db->count('order_main', array('status' => 0));
    $mess = $db->get('rating', array());
    $count_mess = $db->count('rating', array('status' => 0));
    $user = $db->get('admin_staff', array('id' => $_SESSION['ss_admin']));
    $data_order_not_done = $db->get('order_main', array('status' => 0));
    $data_order_done = $db->get('order_main', array('status' => 1));
    $data_bill_not_done = $db->get('order_main', array('status' => 2));
} else {
    header('location: ?controller=login');
}
require_once('./v/v_bill.php');
