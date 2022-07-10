<?php
$set=$_GET['set'];
switch ($set) {
    case 'cancel':
        if(isset($_POST['btn_cancel'])){
            $id = $_GET['id'];
            $data= $db->get('order_main', array('id'=>$id));
        
            $db->insert('cancel_order',array(
                'order_id'=>$data[0]['id'],
                'name'=>$data[0]['name'],
                'address'=>$data[0]['address'],
                'phone'=>$data[0]['phone'],
                'email'=>$data[0]['email'],
                'status'=>0
        ));
        header('location:?controller=order_search');
        }
        require_once('./v/v_cancel_order.php');
        break;
    case 'detail':
        $id = $_GET['id'];
        $data_order = $db->get('order_main',array('id'=>$id));
        $data_order_detail = $db->get('order_detail',array('order_id'=>$id));
        require_once('./v/v_detail_order.php');
        break;
    default:
        # code...
        break;
}

?>