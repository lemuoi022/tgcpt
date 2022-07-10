
<?php
    $id = $_GET['id'];

    $detail = $db->get('product', array('id' => $id));

    $detail1 = $db->get('product_detail', array('id' =>$detail[0]['product_id']));

    $catalog = $db->get('catalog', array('id'=>$detail[0]['catalog_id']));

    $product_related= $db->get_limit('product', array('catalog_id'=>$detail[0]['catalog_id']),4);
    
    $pc = 

    $cmt = $db->get('rating',array());
    

    if (isset($_POST['rate'])) {
        $name = $_SESSION['ss_name'];
        $rating = $_POST['rating'];
        $comment = $_POST['comment'];
        $rate= $db->insert('rating',array('product_id'=>$id,'rate'=>$rating,'comment'=>$comment, 'name' => $name ));
    };
    
    require_once('./v/v_detail_pc.php');
?>