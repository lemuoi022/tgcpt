<?php 

    if(isset($_SESSION['ss_admin'])){
        $user = $db->get('admin_staff',array('id'=>$_SESSION['ss_admin']));
        $noti = $db->get('order_main', array('status'=>0));
        $count_noti = $db->count('order_main', array('status'=>0));
        $mess = $db->get('rating', array('status'=>0));
        $count_mess = $db->count('rating', array('status'=>0));
        if($user[0]['lv']==1){
        switch($_GET['method']){

            case 'del':
                $id = $_GET['id'];
                $db->delete('order_detail',array('order_id'=>$id));
                header('location: ?controller=bill');
                break;

            default:
                header('location: ?controller=bill');
                break;

        }
    } else{
        header('location: ?controller=index');
    } } 
    require_once('./v/v_bill.php');
?>