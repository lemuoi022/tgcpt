<?php

if (isset($_SESSION['ss_admin'])) {
	$data_product = $db->get('product', array('id' => $_SESSION['ss_admin']));
	$noti = $db->get('order_main', array('status' => 0));
	$count_noti = $db->count('order_main', array('status' => 0));
	$mess = $db->get('rating', array('status'=>0));
	$count_mess = $db->count('rating', array('status' => 0));
	$user = $db->get('admin_staff', array('id' => $_SESSION['ss_admin']));
	if ($user[0]['lv'] == 1) {
		switch ($_GET['method']) {
			case 'edit':
				$id = $_GET['id'];
				$data_product = $db->get('product', array('id' => $id));
				if (isset($_POST['edit_product'])) {
					$product_brand = $_POST['product_brand'];
					$product_id = $_POST['product_id'];
					$price = $_POST['price'];
					$qty = $_POST['qty'];
					$content = $_POST['content'];
					$catalog_id = $_POST['catalog_id'];
					$img_link = $_FILES['img_link'];
					$img_link2 = $_FILES['img_link2'];
					$img_link3 = $_FILES['img_link3'];

					$error = array();
					if ($product_id == '') {
						$error['product_id'] = "Tên sản phẩm không được để trống";
					}
					if ($price == '') {
						$error['price'] = "Giá sản phẩm không được để trống";
					}
					if ($qty == '') {
						$error['qty'] = "Giá sản phẩm không được để trống";
					}
					if ($catalog_id == '') {
						$error['catalog_id'] = "Giá sản phẩm không được để trống";
					}
					//Kiểm tra xem mô tả ngắn có trống không
					if ($content == '') {
						$error['content'] = "Mô tả ngắn không được để trống";
					}
					
							//Kiểm tra file update file
			//Bước 1 : Tạo đường dẫn upload lên hệ thống
			$link = 'assets/images/';
			$target_file = $link . $data_product[0]['product_brand']."/" . basename($img_link['name']);
			//bước 2 : kiểm tra điều kiện upload
			//2.1: kích thước
			if ($img_link['size'] > 5242880) {
				$error['img_link'] = "Chỉ được upload file dưới 5md";
			}
			//2.2: kiểu file
			$file_type = pathinfo($img_link['name'], PATHINFO_EXTENSION);
			$file_type_allow = array('png', 'jpg', 'jpeg', 'gif');
			if (!in_array(strtolower($file_type), $file_type_allow)) {
				$error['img_link'] = "Chỉ cho upload img_link ảnh";
			}
			//2.3: kiểm tra tồn tại, nếu tồn tại thì thêm 1 số đằng sau
			$num = 1;
			$target_file = substr($target_file, 0, strrpos($target_file, "."));
			while (file_exists($target_file . "." . $file_type)) {
				$target_file = $target_file . $num;
				$num++;
			}
			$target_file .= "." . $file_type;

//------------------------------------------------------------------------------------------------------------

			//Kiểm tra file update file
			//Bước 1 : Tạo đường dẫn upload lên hệ thống
			$link = 'assets/images/'  ;
			$target_file1 = $link . $data_product[0]['product_brand']."/" . basename($img_link2['name']);
			//bước 2 : kiểm tra điều kiện upload
			//2.1: kích thước
			if ($img_link2['size'] > 5242880) {
				$error['img_link2'] = "Chỉ được upload file dưới 5md";
			}
			//2.2: kiểu file
			$file_type = pathinfo($img_link['name'], PATHINFO_EXTENSION);
			$file_type_allow = array('png', 'jpg', 'jpeg', 'gif');
			if (!in_array(strtolower($file_type), $file_type_allow)) {
				$error['img_link2'] = "Chỉ cho upload img_link ảnh";
			}
			//2.3: kiểm tra tồn tại, nếu tồn tại thì thêm 1 số đằng sau
			$num = 1;
			$target_file1 = substr($target_file1, 0, strrpos($target_file1, "."));
			while (file_exists($target_file1 . "." . $file_type)) {
				$target_file1 = $target_file1 . $num;
				$num++;
			}
			$target_file1 .= "." . $file_type;

//------------------------------------------------------------------------------------------------------------------------------------

			//Kiểm tra file update file
			//Bước 1 : Tạo đường dẫn upload lên hệ thống
			$link = 'assets/images/';
			$target_file2 = $link . $data_product[0]['product_brand']."/" . basename($img_link3['name']);
			//bước 2 : kiểm tra điều kiện upload
			//2.1: kích thước
			if ($img_link3['size'] > 5242880) {
				$error['img_link3'] = "Chỉ được upload file dưới 5md";
			}
			//2.2: kiểu file
			$file_type = pathinfo($img_link3['name'], PATHINFO_EXTENSION);
			$file_type_allow = array('png', 'jpg', 'jpeg', 'gif');
			if (!in_array(strtolower($file_type), $file_type_allow)) {
				$error['img_link3'] = "Chỉ cho upload img_link ảnh";
			}
			//2.3: kiểm tra tồn tại, nếu tồn tại thì thêm 1 số đằng sau
			$num = 1;
			$target_file2 = substr($target_file2, 0, strrpos($target_file2, "."));
			while (file_exists($target_file2 . "." . $file_type)) {
				$target_file2 = $target_file2 . $num;
				$num++;
			}
			$target_file2 .= "." . $file_type;
			if (!$error) {
				//update ảnh vào thư mục img
				move_uploaded_file($img_link['tmp_name'], $target_file);
				move_uploaded_file($img_link2['tmp_name'], $target_file1);
				move_uploaded_file($img_link3['tmp_name'], $target_file2);
			
						$db->update('product', array(
							'catalog_id' => $catalog_id,
							'product_id' => $product_id,
							'price' => $price,
							'qty' => $qty,
							'img_link' => $target_file,
							'img_link2' => $target_file1,
							'img_link3' => $target_file2,
							'content' => $content
						), array('id' => $id));
						header('location: ?controller=handle_product');
						exit();
					} else {
						$db->update('product', array(
							'catalog_id' => $catalog_id,
							'product_id' => $product_id,
							'price' => $price,
							'qty' => $qty,
							'content' => $content
						), array('id' => $id));
						header('location: ?controller=handle_product');
						exit();
					}
					
				}
				require_once('./v/v_handle_product.php');
				break;

			case 'del':
				$id = $_GET['id'];
				$db->delete('product', array('id' => $id));
				header('location: ?controller=product');
				break;

			default:
				header('location: ?controller=product');
				break;
		}
	} else {
		header('location: ?controller=product');
	}
}
