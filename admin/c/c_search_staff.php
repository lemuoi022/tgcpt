<?php
if (isset($_GET['keyword'])) {
    $keyword = $_GET['keyword'];
    $data_staff = $db->search('admin_staff', 'name_staff', $keyword);
    $noti = $db->get('order_main', array('status' => 0));
    $count_noti = $db->count('order_main', array('status' => 0));
    $mess = $db->get('rating', array('status'=>0));
    $count_mess = $db->count('rating', array('status' => 0));
    if (isset($_SESSION['ss_admin'])) {
        $user = $db->get('admin_staff', array('id' => $_SESSION['ss_admin']));
    }
    $empty = '';
    if (empty($data_staff)) {
        $empty = "Không tìm thấy sản phẩm";
    }
}
require_once('./v/v_search_staff.php');
