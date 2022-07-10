<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Document</title>
    <style>
    </style>
</head>
<style>
    .container-fluid.order {
        margin-bottom: 100px;
    }
</style>

<body>
    <div class="res-web">
        <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v11.0" nonce="s09fLbP5"></script>

        <?php include('v_header.php') ?>
    </div>

    <div class="container order">
        <div class="col-md-9">
            
                <div class="row">
                    <h3 class="text-">Chi tiết đơn hàng</h3>
                </div><br>

                <form>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputPassword4" style="color:green; font-weight: bold;">Mã đơn:</label>
                            <b class="text col-md-12" style="color:black;"><?php echo $data_order[0]['id'] ?></b>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="inputZip" style="color:green; font-weight: bold;">Trạng thái:</label>
                            <b class="text col-md-12"><?php if ($data_order[0]['status'] == 1) {
                                                            echo "<font color=green>Đã duyệt</font>";
                                                        } else {
                                                            echo "<font color=red>Chưa duyệt</font>";
                                                        }
                                                        ?></b>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputAddress" style="color:green; font-weight: bold;">Địa chỉ</label>
                        <b class="text col-md-12" style="color:black;"><?php echo $data_order[0]['address'] ?></b>
                    </div>
                    <div class="form-group">
                        <label for="inputAddress2" style="color:green; font-weight: bold;">Họ và tên: </label>
                        <b class="text col-md-12" style="color:black;"><?php echo $data_order[0]['name'] ?></b>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputCity" style="color:green; font-weight: bold;">Số điện thoại</label>
                            <b class="text col-md-12" style="color:black;">(+84)<?php echo $data_order[0]['phone'] ?></b>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState" style="color:green; font-weight: bold;">Tổng tiền</label>
                            <b class="text col-md-12" style="color:black;"><?php echo number_format($data_order[0]['amount']) ?> VNĐ</b>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputEmail4" style="color:green; font-weight: bold;">Email:</label>
                            <b class="text col-md-12" style="color:black;"><?php echo $data_order[0]['email'] ?></b>
                        </div>

                    </div>

                </form>
                <?php foreach ($data_order as $key => $value) { 
                    if($value['status']==0)
                    echo "<a href='?controller=handle_order&set=cancel&id={$value['id']}'><button type='submit' class='btn btn-danger'>Hủy đơn</button></a>";
                }?>
        </div>
    <!-- Content Row -->
    <div>
        <h4>SẢN PHẨM</h4>

        <!-- Button trigger modal -->
        <form action="">
            <table class="table table-dark">
                <thead>
                    <tr style="text-align: center;">
                        <th scope="col">ID</th>
                        <th scope="col">Ảnh sản phẩm</th>
                        <th scope="col">Tên sản phẩm</th>
                        <th scope="col">Số lượng</th>
                        <th scope="col">Đơn giá</th>
                        <th scope="col">Tổng tiền</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($data_order_detail as $key => $value) {
                        $data_product = $db->get('product', array('id' => $value['product_id']))
                    ?>
                        <tr style="text-align: center;padding-top:30px;">
                            <th scope="row" style="text-align:center;"><?php echo $value['id'] ?></th>
                            <td><img height="50" width="50" src="<?php echo $data_product[0]['img_link'] ?>" alt=""></td>
                            <td><?php echo $data_product[0]['product_name'] ?></td>
                            <td><?php echo $value['qty'] ?></td>
                            <td><?php echo number_format($value['price']) ?> VNĐ</td>
                            <td><?php echo number_format($value['amount']) ?> VNĐ</td>

                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </form>
    </div>
    </div>


    <?php include('v_footer.php') ?>
    <script>
        window.fbAsyncInit = function() {
            FB.init({
                appId: "1784956665094089",
                xfbml: true,
                version: "v2.6"
            });
        };
        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) {
                return;
            }
            js = d.createElement(s);
            js.id = id;
            js.src = "//connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));
    </script>
    <div class="fb-customerchat" page_id="142092768006615"></div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="assets/javascript/main.js"></script>
</body>

</html>