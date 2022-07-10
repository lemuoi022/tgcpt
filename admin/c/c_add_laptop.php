<?php
if (isset($_SESSION['ss_admin'])) { //save working session
    $user =  $db->get('admin_staff', array('id' => $_SESSION['ss_admin']));
    if ($user[0]['lv'] == 1) { //set lv user if lv user = 1 allow to insert
        if (isset($_POST['add-laptop'])) {
            //get data to insert database
            $laptop_name = $_POST['laptop_name'];
            $product_brand = $_POST['product_brand'];
            $monitor = $_POST['monitor'];
            $cpu = $_POST['cpu'];
            $ram = $_POST['ram'];
            $vga = $_POST['vga'];
            $ssd = $_POST['ssd'];

            //create variable error to save array
            $error = array();

            //assignment error if error echo error
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

            //empty error allow to insert
            if (!$error) {
                $db->insert('laptop_detail', array(
                    'laptop_name' => $laptop_name,
                    'product_brand' => $product_brand,
                    'monitor' => $monitor,
                    'cpu' => $cpu,
                    'ram' => $ram,
                    'vga' => $vga,
                    'ssd' => $ssd
                ));
                //Insert success navigation to page laptop_detail
                header('location: ?controller=laptop_detail');
            }
        }
    } else {
        //lv != 1 deny insert and echo..
        echo "Bạn không phải admin";
        header('location: ?controller=index');
    }
}
?>