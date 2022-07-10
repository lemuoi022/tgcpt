<?php
$catalog = $_GET['catalog'];
switch ($catalog) {
    case 'laptop':
        $data_product = $db->get('product',array('catalog_id' => 1));
        break;
    case 'pc':
        $data_product = $db->get('product',array('catalog_id' => 2));
        break;
    default:
        # code...
        break;
}

require_once('./v/v_product.php');
?>