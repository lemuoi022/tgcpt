<?php 

    if(isset($_SESSION['ss_admin'])){
        $user = $db->get('admin_staff',array('id'=>$_SESSION['ss_admin']));
        $noti = $db->get('order_main', array('status'=>0));
        $count_noti = $db->count('order_main', array('status'=>0));
        $mess = $db->get('rating', array('status'=>0));
        $count_mess = $db->count('rating', array('status'=>0));
        if($user[0]['lv']==1){
        switch($_GET['method']){
            case 'edit':
                $catalog_id = $_GET['catalog_id'];
                $data_type = $db->get('catalog',array('catalog_id'=>$catalog_id));
                if(isset($_POST['edit_type'])){
                    $catalog_id = $_POST['catalog_id'];
                    $name = $_POST['name'];

                    $error = array();
                    if($catalog_id == ''){
                        $error['catalog_id'] = "Mật khẩu không được để trống";
                    }
            
                    if($name == ''){
                        $error['name'] = "Tên không được để trống";
                    }



                    if(!$error){
                        $db->update('catalog',array(
                            'catalog_id'=>$catalog_id,
                            'name'=>$name,
                        ),array('catalog_id'=>$catalog_id));
                        header('location: ?controller=type');
                    }
                }
                require_once('./v/v_handle_type.php');
                break;

            case 'del':
                $catalog_id = $_GET['catalog_id'];
                $db->delete('catalog', array('catalog_id'=>$catalog_id));
                header('location: ?controller=type');
                break;

            default:
                header('location: ?controller=type');
                break;

        }
    } else{
        header('location: ?controller=staff');
    } } 
?>