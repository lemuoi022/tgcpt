<?php
if (isset($_SESSION['ss_admin'])) {
    $user =  $db->get('admin_staff', array('id' => $_SESSION['ss_admin']));
    $noti = $db->get('order_main', array('status' => 0));
    $count_noti = $db->count('order_main', array('status' => 0));
    $mess = $db->get('rating', array('status'=>0));
    $count_mess = $db->count('rating', array('status' => 0));
    $data_order_not_done = $db->get('order_main', array('status' => 0));
    $data_order_done = $db->get('order_main', array('status' => 1));
    if ($user[0]['lv'] == 1) {
        switch ($_GET['method']) {
            case 'browse':
                $id = $_GET['id'];
                $data_rate = $db->get('rating', array('order_id' => $id));
                $db->update('rating', array('status' => 1), array('id' => $id));
                header('location: ?controller=rate');
                break;
            case 'del':
                $id = $_GET['id'];
                $db->delete('rating', array('id' => $id));
                header('location: ?controller=rate');
                break;

            default:
                header('location: ?controller=rate');
                break;
        }
    } else {
        header('location: ?controller=rate');
    }
} else {
    header('location: ?controller=login');
}
require_once('./v/v_rate.php');
