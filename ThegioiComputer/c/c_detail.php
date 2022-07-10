
<?php
$id = $_GET['id'];

if (isset($_GET['catalog'])) {
    if ($_GET['catalog'] == 2) {
        $idpc = $_GET['idpc'];
        header('location:?controller=detail_pc&id=' . $idpc);
    }
}
$detail = $db->get('product', array('product_id' => $id));

$detail1 = $db->get('laptop_detail', array('id' => $detail[0]['product_id']));

$catalog = $db->get('catalog', array('id' => $detail[0]['catalog_id']));

$product_related = $db->get_limit('product', array('catalog_id' => $detail[0]['catalog_id']), 4);

$pc =

    $cmt = $db->get('rating', array('status' => 1));


if (isset($_POST['rate'])) {
    if (isset($_SESSION['ss_name'])) {
        $name = $_SESSION['ss_name'];
    } else {
        $name = 'guest';
    }
    $rating = $_POST['rating'];
    $comment = $_POST['comment'];
    $status = 0;
    $rate = $db->insert('rating', array('product_id' => $id, 'rate' => $rating, 'comment' => $comment, 'name' => $name, 'status' => $status));
}
require_once('./v/v_detail.php');
?>