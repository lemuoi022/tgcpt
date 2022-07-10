<?php
if (isset($_GET['keyword'])) {
    $keyword = $_GET['keyword'];
    $user = $db->get('admin_staff', array());
    $product = $db->search('product', 'product_name', $keyword);
    $noti = $db->get('order_main', array('status' => 0));
    $count_noti = $db->count('order_main', array('status' => 0));
    $mess = $db->get('rating', array('status' => 0));
    $count_mess = $db->count('rating', array('status' => 0));
}
require_once('./v/v_search_product.php');
