<?php
//Kiểm tra xem người dùng đã đăng nhập chưua
if (isset($_SESSION['ss_admin'])) {
	//Nếu đã đăng nhập thì lấy thông tin người dùng theo ss
	$user = $db->get('admin_staff', array('id' => $_SESSION['ss_admin']));
	//Kiểm tra có phải là admin không
	if ($user[0]['lv'] == 1) {

		if (isset($_POST['add-type'])) {
			$name = $_POST['name'];
			$catalog_id = $_POST['catalog_id'];
			$error = array();

			if ($name == '') {
				$error['name'] = "Tên sản phẩm không được để trống";
			}

			if ($catalog_id == '') {
				$error['catalog_id'] = "Giá sản phẩm không được để trống";
			}

			if (!$error) {

				//insert vào cơ sở dữ liệu thông tin người dùng nhập
				$db->insert('catalog', array(
					'catalog_id' => $catalog_id,
					'name' => $name
				));
				//Chuyển về trang sản phẩm
				header('location: ?controller=type');
			}
		}
	} else {
		//Nếu không phải admin thì cho về trang nhan viên
		header('location: ?controller=staff');
	}
} else {
	//Nếu chưa đăng nhập thì sẽ cho người dùng về trang login
	header('location: ?controller=login');
}
require_once('./v/v_type_product.php');
