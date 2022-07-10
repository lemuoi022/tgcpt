<?php

session_start();

require_once('./m/m_database.php');

$db = new database();

if (isset($_GET['controller'])) {
    $controller = $_GET['controller'];
} else {
    $controller = 'index';
}


switch ($controller) {
    case 'login':
        require_once('./c/c_login.php');
        break;

    case 'index':
        require_once('./c/c_index.php');
        break;

    case 'log_out':
        require_once('./c/c_log_out.php');
        break;

    case 'search':
        require_once('./c/c_search.php');
        break;

    case 'search_staff':
        require_once('./c/c_search_staff.php');
        break;

    case 'staff':
        require_once('./c/c_staff.php');
        break;

    case 'add_staff':
        require_once('./c/c_add_staff.php');
        break;

    case 'handle':
        require_once('./c/c_handle_staff.php');
        break;

    case 'handle_bill':
        require_once('./c/c_handle_product.php');
        break;

    case 'handle_product':
        require_once('./c/c_handle_product.php');
        break;

    case 'product':
        require_once('./c/c_product.php');
        break;

    case 'laptop_detail':
        require_once('./c/c_laptop_detail.php');
        break;

    case 'product_detail':
        require_once('./c/c_product_detail.php');
        break;

    case 'add_laptop':
        require_once('./c/c_add_laptop.php');
        break;

    case 'add_pc':
        require_once('./c/c_add_pc.php');
        break;

    case 'add_product':
        require_once('./c/c_add_product.php');
        break;

    case 'handle_laptop':
        require_once('./c/c_handle_laptop.php');
        break;

    case 'handle_pc':
        require_once('./c/c_handle_pc.php');
        break;

    case 'type':
        require_once('./c/c_type.php');
        break;

    case 'add_type':
        require_once('./c/c_add_type.php');
        break;

    case 'handle_type':
        require_once('./c/c_handle_type.php');
        break;

    case 'bill':
        require_once('./c/c_bill.php');
        break;

    case 'cancel_bill':
        require_once('./c/c_cancel_bill.php');
        break;

    case 'order_detail':
        require_once('./c/c_detail_bill.php');
        break;

    case 'guest':
        require_once('./c/c_guest.php');
        break;

    case 'search_guest':
        require_once('./c/c_search_guest.php');
        break;

    case 'handle_guest':
        require_once('./c/c_handle_guest.php');
        break;

    case 'handle_order':
        require_once('./c/c_handle_order.php');
        break;

    case 'browse':
        require_once('./c/c_handle_order.php');
        break;

    case 'rate':
        require_once('./c/c_rate.php');
        break;

    case 'handle_rate':
        require_once('./c/c_handle_rate.php');
        break;

    case 'chart':
        require_once('./v/v_chart.php');
        break;

    case 'table':
        require_once('./c/c_table.php');
        break;

    case 'warehouse':
        require_once('./c/c_warehouse.php');
        break;

    default:
        echo "Lỗi trang";
        break;
}
