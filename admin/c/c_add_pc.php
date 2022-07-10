<?php
if (isset($_SESSION['ss_admin'])) {
    $user =  $db->get('admin_staff', array('id' => $_SESSION['ss_admin']));
    if ($user[0]['lv'] == 1) {
        if (isset($_POST['add-pc'])) {
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
                $db->insert('product_detail', array(
                    'product_name' => $product_name,
                    'mainboard' => $mainboard,
                    'case_pc' => $case_pc,
                    'cpu' => $cpu,
                    'ram' => $ram,
                    'vga' => $vga,
                    'psu' => $psu,
                    'ssd' => $ssd
                ));
                header('location: ?controller=product_detail');
            }
        }
    } else {
        echo "Bạn không phải admin";
        header('location: ?controller=staff');
    }
}
