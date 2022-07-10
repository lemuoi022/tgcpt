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
		.outer-circle {
			margin-top: 50px;
		}

		.nav-products {
			padding-bottom: 200px;
		}

		footer {
			background-color: #fff;
			padding-top: 200px;
		}
	</style>
</head>

<body>
	<div class="res-web">
		<div id="fb-root"></div>
		<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v11.0" nonce="s09fLbP5"></script>

		<?php include('v_header.php') ?>
	</div>
	<div class="container">
		<section id="featured" class="my-5 pb-5">
			<div class="container text-center mt-5">
				<h3 style="margin-top: 15px;">Sản phẩm</h3>
				<hr class="mx-auto" style="background-color:rgb(114,187,192)">
				<p>Tại đây bạn có những sản phẩm hiệu năng tốt nhất trong tầm giá</p>
			</div>
			<div class="container text-center ">
				<div style="float: right;">
					Sắp xếp theo<select name="" id="" onchange="location = this.value;">
						<option>Sắp xếp: </option>
						<option value="?controller=sortASC&catalog=<?php echo $_GET['catalog'] ?>">Giá tăng dần</option>
						<option value="?controller=sortDESC&catalog=<?php echo $_GET['catalog'] ?>">Giá giảm dần</option>

					</select>
				</div> <br><br>


				<hr class="mx-auto" style="width:100%; background-color:rgb(114,187,192)">


				<div class="row mx-auto container-fluid">
					<?php foreach ($data_product as $key => $value) { ?>
						<div class="product text-center col-lg-3 col-md-4 col-12">
							<a href="?controller=detail&idpc=<?php echo $value['id'] ?>&catalog=<?php echo $value['catalog_id'] ?>&id=<?php echo $value['product_id'] ?>"><img class="img-fluid mb-3" src="<?php echo $value['img_link'] ?>" alt=""></a>
							<div class="star">
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<h5 class=""><?php echo $value['product_name'] ?></h5>
								<h4 class=""><?php echo number_format($value['price']) ?>Đ</h4>
								<button class="btn btn-primary" style=""><a href="?controller=addcart&id=<?php echo $value['product_id'] ?>" style="text-decoration:none;color: black;">Đặt hàng</a></button>
							</div>
						</div>
					<?php } ?>
		</section>
	</div>



	<?php include('v_footer.php') ?>


	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="assets/javascript/main.js"></script>
</body>

</html>