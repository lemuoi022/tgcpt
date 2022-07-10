<?php

if (isset($_SESSION['ss_admin'])) {
    $user = $db->get('admin_staff', array('id' => $_SESSION['ss_admin']));
    $noti = $db->get('order_main', array('status' => 0));
    $count_noti = $db->count('order_main', array('status' => 0));
    $mess = $db->get('rating', array('status'=>0));
    $count_mess = $db->count('rating', array('status' => 0));
    if ($user[0]['lv'] == 1) {
        switch ($_GET['method']) {
            case 'edit':
                $id = $_GET['id'];
                $data_laptop = $db->get('laptop_detail', array('id' => $id));
                if (isset($_POST['edit_laptop'])) {
                    $laptop_name = $_POST['laptop_name'];
                    $product_brand = $_POST['product_brand'];
                    $monitor = $_POST['monitor'];
                    $cpu = $_POST['cpu'];
                    $ram = $_POST['ram'];
                    $vga = $_POST['vga'];
                    $ssd = $_POST['ssd'];

                    $error = array();

                    if ($laptop_name == '') {
                        $error['laptop_name'] = "Không được để trống";
                    }

                    if ($product_brand == '') {
                        $error['product_brand'] = "Không được để trống";
                    }

                    if ($monitor == '') {
                        $error['monitor'] = "Không được để trống";
                    }

                    if ($cpu == '') {
                        $error['cpu'] = "Không được để trống";
                    }

                    if ($ram == '') {
                        $error['ram'] = "Không được để trống";
                    }

                    if ($vga == '') {
                        $error['vga'] = "Không được để trống";
                    }

                    if ($ssd == '') {
                        $error['ssd'] = "Không được để trống";
                    }


                    if (!$error) {
                        $db->update('laptop_detail', array(
                            'laptop_name' => $laptop_name,
                            'product_brand' => $product_brand,
                            'monitor' => $monitor,
                            'cpu' => $cpu,
                            'ram' => $ram,
                            'vga' => $vga,
                            'ssd' => $ssd
                        ), array('id' => $id));
                        header('location: ?controller=laptop_detail');
                    }
                }
                require_once('./v/v_handle_laptop.php');
                break;

            case 'del':
                $id = $_GET['id'];
                $db->delete('laptop_detail', array('id' => $id));
                header('location: ?controller=laptop_detail');
                break;

            default:
                header('location: ?controller=laptop_detail');
                break;
        }
    } else {
        header('location: ?controller=staff');
    }
}
