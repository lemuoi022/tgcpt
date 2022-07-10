<?php 
$catalog = $_GET['catalog'];
switch ($catalog) {
    case 'laptop':
        $data_product = $db->sortDESC('product',array('catalog_id' => 1),'price');
        break;
    case 'pc':
        $data_product = $db->sortDESC('product',array('catalog_id' => 2),'price');
        break;
    default:
        # code...
        break;
}
require_once('./v/v_product.php');
?>