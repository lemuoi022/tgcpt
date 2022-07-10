<?php
if (isset($_SESSION['ss_admin'])) {
    $user =  $db->get('admin_staff', array('id' => $_SESSION['ss_admin']));
    $noti = $db->get('order_main', array('status' => 0));
    $count_noti = $db->count('order_main', array('status' => 0));
    $mess = $db->get('rating', array('status'=>0));
    $count_mess = $db->count('rating', array('status' => 0));
    $data_order_not_done = $db->get('order_main', array('status' => 0));
    $data_order_done = $db->get('order_main', array('status' => 1));
    $data_bill_not_done = $db->get('order_main', array('status' => 2));
    if ($user[0]['lv'] == 1) {
        switch ($_GET['method']) {
            case 'browse':
                $id = $_GET['id'];
                $data_order_detail = $db->get('order_detail', array('order_id' => $id));
                
                foreach ($data_order_detail as $key => $value) {
                    $error = array();
                if ($value['qty'] > $product[0]['qty']) {
                    $error['qty'] = "Số lượng sản phẩm không đủ";
                }
                    $product = $db->get('product', array('id' => $value['product_id']));
                    if(!$error){
                    $db->update('product', array('qty' => $product[0]['qty'] - $value['qty']), array('id' => $value['product_id']));
                }
                }

                $error = array();
                if ($value['qty'] > $product[0]['qty']) {
                    $error['qty'] = "Số lượng sản phẩm không đủ";
                }
                
                if (!$error) {
                    $db->update('order_main', array('status' => 1), array('id' => $id));
                    header('location: ?controller=bill');
                } else if($error){
                    $db->update('order_main', array('status' => 2), array('id' => $id));
                    header('location: ?controller=bill');
                } else{
                    header('location: ?controller=bill');
                }
                break;
            case 'del':
                $id = $_GET['id'];
                $db->delete('order_main', array('id' => $id));
                header('location: ?controller=bill');
                break;

            default:
                header('location: ?controller=bill');
                break;
        }
    } else {
        header('location: ?controller=order');
    }
} else {
    header('location: ?controller=login');
}
require_once('./v/v_detail_bill.php');
