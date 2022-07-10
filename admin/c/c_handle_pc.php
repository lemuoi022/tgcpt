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
                $data_pc = $db->get('product_detail', array('id' => $id));
                if (isset($_POST['edit_pc'])) {
                    $product_name = $_POST['product_name'];
                    $mainboard = $_POST['mainboard'];
                    $case_pc = $_POST['case_pc'];
                    $cpu = $_POST['cpu'];
                    $ram = $_POST['ram'];
                    $vga = $_POST['vga'];
                    $ssd = $_POST['ssd'];
                    $psu = $_POST['psu'];

                    $error = array();



                    if ($product_name == '') {
                        $error['product_name'] = "Không được để trống";
                    }

                    if ($mainboard == '') {
                        $error['mainboard'] = "Không được để trống";
                    }

                    if ($case_pc == '') {
                        $error['case_pc'] = "Không được để trống";
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

                    if ($psu == '') {
                        $error['psu'] = "Không được để trống";
                    }

                    if ($ssd == '') {
                        $error['ssd'] = "Không được để trống";
                    }


                    if (!$error) {
                        $db->update('product_detail', array(
                            'product_name' => $product_name,
                            'mainboard' => $mainboard,
                            'case_pc' => $case_pc,
                            'cpu' => $cpu,
                            'ram' => $ram,
                            'vga' => $vga,
                            'psu' => $psu,
                            'ssd' => $ssd
                        ), array('id' => $id));
                        header('location: ?controller=product_detail');
                    }
                }
                require_once('./v/v_handle_pc.php');
                break;

            case 'del':
                $id = $_GET['id'];
                $db->delete('product_detail', array('id' => $id));
                header('location: ?controller=product_detail');
                break;

            default:
                header('location: ?controller=product_detail');
                break;
        }
    } else {
        header('location: ?controller=staff');
    }
}
