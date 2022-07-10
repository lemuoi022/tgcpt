<?php
$brand = $_GET['brand'];
$banner1 = '';
$banner2 = '';
$banner3 = '';
$banner4 = '';
switch ($brand) {
    case 'acer':
        $banner1 = '<img src="assets/images/acer/banner-acer.jpg" style="width: 100%; height: 500px;">';

        $banner2 = '<div class="banner-products" style="margin-left: 210px;"><img src="assets/images/acer/banner-product1.jpg" alt=""></div>';

        $banner3 = '<div class="banner-products" style=" width:fit-content"><img style=" width:100%" src="assets/images/acer/banner-product2.jpg" alt=""></div>';

        $data = $db->get('product', array('product_brand' => $brand));
       
        $data_product0 = $db->get('product_detail');
        $data_product1 = $db->get('product_detail');
        $data_product2 = $db->get('product_detail');
        $data_product3 = $db->get('product_detail');
        $data_product4 = $db->get('product_detail');
        $data_product5 = $db->get('product_detail');
        $data_product6 = $db->get('product_detail');


        $data_price0 = $db->get('product');
        $data_price1 = $db->get('product');
        $data_price2 = $db->get('product');
        $data_price3 = $db->get('product');
        $data_price4 = $db->get('product');
        $data_price5 = $db->get('product');
        $data_price6 = $db->get('product');


        break;
    case 'asus':
        $color = ' style="background-color:#000;"';
        $background = 'style="background-color: #261e2b;"';
        $banner1 = ' <img src="assets/images/asus/banner-asus.jpg" style="width: 100%; height: 500px;">';
        $banner2 = '<div class="banner-products" style="margin-left: 280px;"><img src="assets/images/asus/banner-product1.jpg" alt="" style="margin-top: 20px;"></div>';
        $banner3 = '<div class="banner-products" ><img style=" width:100%;"src="assets/images/asus/banner-product2.jpg" alt=""></div>';
        $data = $db->get('product', array('product_brand' => $brand));
       $data_product0 = $db->get('product_detail');
        $data_product1 = $db->get('product_detail');
        $data_product2 = $db->get('product_detail');
        $data_product3 = $db->get('product_detail');
        $data_product4 = $db->get('product_detail');
        $data_product5 = $db->get('product_detail');
        $data_product6 = $db->get('product_detail');


        $data_price0 = $db->get('product');
        $data_price1 = $db->get('product');
        $data_price2 = $db->get('product');
        $data_price3 = $db->get('product');
        $data_price4 = $db->get('product');
        $data_price5 = $db->get('product');
        $data_price6 = $db->get('product');
        break;
    case 'dell':
        $color = ' style="background-color: #fff;"';
        $background = 'style="background-image: linear-gradient(-90deg, #436276, #1f272a);"';
        $banner1 = '<img src="assets/images/dell/banner-dell.jpg" style="width: 100%; height: 500px;">';
        $banner2 = ' <div class="banner-products" style="margin-left: 280px;"><img src="assets/images/dell/banner-product1.jpg" alt=""></div>';
        $banner3 = '<div class="banner-products" style=" width:fit-content"><img src="assets/images/dell/banner-product2.jpg" alt="" style="width: 112.4%; margin-top: -22px;"></div>';
        $data = $db->get('product', array('product_brand' => $brand));
        $data_product0 = $db->get('product_detail');
        $data_product1 = $db->get('product_detail');
        $data_product2 = $db->get('product_detail');
        $data_product3 = $db->get('product_detail');
        $data_product4 = $db->get('product_detail');
        $data_product5 = $db->get('product_detail');
        $data_product6 = $db->get('product_detail');


        $data_price0 = $db->get('product');
        $data_price1 = $db->get('product');
        $data_price2 = $db->get('product');
        $data_price3 = $db->get('product');
        $data_price4 = $db->get('product');
        $data_price5 = $db->get('product');
        $data_price6 = $db->get('product');
        break;
    case 'lenovo':
        $color = 'style="background-color: #fff;"';
        $background = 'style="background-image: linear-gradient(-90deg, #0b1218, #3c2329);"';
        $banner1 = '<img src="assets/images/lenovo/banner_lenovo.jpg" style="width: 100%; height: 500px;">';
        $banner2 = '<div class="banner-products"><img src="assets/images/lenovo/banner-product1.jpg" alt="" style="width: 100%; height: 500px;"></div>';
        $banner3 = '<div class="banner-products" style=" width:fit-content"><img src="assets/images/lenovo/banner-product2.jpg" alt="" style="width: 100%; margin-top: -22px;"></div>';
        $data = $db->get('product', array('product_brand' => $brand));
        $data_product0 = $db->get('product_detail');
        $data_product1 = $db->get('product_detail');
        $data_product2 = $db->get('product_detail');
        $data_product3 = $db->get('product_detail');
        $data_product4 = $db->get('product_detail');
        $data_product5 = $db->get('product_detail');
        $data_product6 = $db->get('product_detail');


        $data_price0 = $db->get('product');
        $data_price1 = $db->get('product');
        $data_price2 = $db->get('product');
        $data_price3 = $db->get('product');
        $data_price4 = $db->get('product');
        $data_price5 = $db->get('product');
        $data_price6 = $db->get('product');
        break;
    case 'msi':
        $color = ' style="background-color: #000;"';
        $background = 'style="background-image: linear-gradient(-90deg, #0b1218, #3c2329);"';
        $banner1 = '<img src="assets/images/msi/banner-msi.jpg" style="width: 100%; height: 500px;">';
        $banner2 = '<div class="banner-products"><img src="assets/images/msi/banner-product1.jpg" alt="" style="margin-top: 20px; width:100%;"></div>';
        $banner3 = ' <div class="banner-products" ><img style="width:100%;" src="assets/images/msi/banner-product2.jpg" alt="" style="width: 1450px; height:500px"></div>';
        $data = $db->get('product', array('product_brand' => $brand));
        $data_product0 = $db->get('product_detail');
        $data_product1 = $db->get('product_detail');
        $data_product2 = $db->get('product_detail');
        $data_product3 = $db->get('product_detail');
        $data_product4 = $db->get('product_detail');
        $data_product5 = $db->get('product_detail');
        $data_product6 = $db->get('product_detail');


        $data_price0 = $db->get('product');
        $data_price1 = $db->get('product');
        $data_price2 = $db->get('product');
        $data_price3 = $db->get('product');
        $data_price4 = $db->get('product');
        $data_price5 = $db->get('product');
        $data_price6 = $db->get('product');
        break;
}
require_once('./v/v_pc.php');
