<?php
$product_laptop = $db->get('product',array('catalog_id' => 1));
$product_pc = $db->get('product',array('catalog_id' => 2));
require_once('./v/v_index.php');
?>