<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet">

  <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <!-- <link rel="stylesheet" href="assets/css/carousel.css"> -->

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>

  <title>Thế giới Computer</title>
  <style>
    @import url('https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900|Rubik:300,400,500,700,900');
    .button{
      background-color: red;
      border: 1px solid red;
      color: white;
      position: block;
    }
    .button:hover{
      color: #ccc;
      text-decoration: none;
    }
    * {
      margin: 0;
      padding: 0;
      -webkit-font-smoothing: antialiased;
      -webkit-text-shadow: rgba(0, 0, 0, .01) 0 0 1px;
      text-shadow: rgba(0, 0, 0, .01) 0 0 1px
    }

    body {
      
      font-size: 14px;
      font-weight: 400;
      background: #eff6fa;
      color: #000000
    }

    div {
      display: block;
      position: relative;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      box-sizing: border-box
    }

    .bbb_viewed {
      padding-top: 51px;
      padding-bottom: 60px;
      background: #eff6fa
    }

    .bbb_main_container {
      background-color: #fff;
      padding: 11px
    }

    .bbb_viewed_title_container {
      border-bottom: solid 1px #dadada
    }

    .bbb_viewed_title {
      margin-bottom: 16px;
      margin-top: 8px;
      font-family: 'Font Awesome 5 Brands';
    }

    .bbb_viewed_nav_container {
      position: absolute;
      right: -5px;
      bottom: 14px
    }

    .bbb_viewed_nav {
      display: inline-block;
      cursor: pointer
    }

    .bbb_viewed_nav i {
      color: #dadada;
      font-size: 18px;
      padding: 5px;
      -webkit-transition: all 200ms ease;
      -moz-transition: all 200ms ease;
      -ms-transition: all 200ms ease;
      -o-transition: all 200ms ease;
      transition: all 200ms ease
    }

    .bbb_viewed_nav:hover i {
      color: #606264
    }

    .bbb_viewed_prev {
      margin-right: 15px
    }

    .bbb_viewed_slider_container {
      padding-top: 13px
    }

    .bbb_viewed_item {
      width: 100%;
      background: #FFFFFF;
      border-radius: 2px;
      padding-top: 25px;
      padding-bottom: 25px;
      padding-left: 30px;
      padding-right: 30px
    }

    .bbb_viewed_image {
      width: 150px;
      height: 150px
    }

    .bbb_viewed_image img {
      display: block;
      max-width: 100%
    }

    .bbb_viewed_content {
      width: 100%;
      margin-top: 25px
    }

    .bbb_viewed_price {
      font-size: 16px;
      color: #000000;
      font-weight: 500
    }

    .bbb_viewed_item.discount .bbb_viewed_price {
      color: #df3b3b
    }

    .bbb_viewed_price span {
      position: relative;
      font-size: 12px;
      font-weight: 400;
      color: rgba(0, 0, 0, 0.6);
      margin-left: 8px
    }

    .bbb_viewed_price span::after {
      display: block;
      position: absolute;
      top: 6px;
      left: -2px;
      width: calc(100% + 4px);
      height: 1px;
      background: #8d8d8d;
      content: ''
    }

    .bbb_viewed_name {
      margin-top: 3px
    }

    .bbb_viewed_name a {
      font-size: 16px;
      color: #000000;
      text-decoration: none;
      -webkit-transition: all 200ms ease;
      -moz-transition: all 200ms ease;
      -ms-transition: all 200ms ease;
      -o-transition: all 200ms ease;
      transition: all 200ms ease
    }

    .bbb_viewed_name a:hover {
      color: #0e8ce4
    }

    .item_marks {
      position: absolute;
      top: 18px;
      left: 18px
    }

    .item_mark {
      display: none;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      color: #000000;
      font-size: 10px;
      font-weight: 500;
      line-height: 36px;
      text-align: center
    }

    .item_discount {
      background: #38a8ac;
      margin-right: 5px
    }

    .item_new {
      background: #0e8ce4
    }

    .bbb_viewed_item.discount .item_discount {
      display: inline-block
    }

    .bbb_viewed_item.is_new .item_new {
      display: inline-block
    }
  </style>
</head>

<body>
  <div class="res-web">
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v11.0" nonce="s09fLbP5"></script>

    <?php include('v_header.php') ?>
  </div>

  <div class="container header-nav-block">
    <div class="header-banner">
      <div class="left">
        <div class="banner-slide">
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="slide-show carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="assets/images/slideshow_1.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="assets/images/slideshow_2.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="assets/images/slideshow_3.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
        <div class="sub-banner">
          <a href="#"><img src="assets/images/solid4.jpg" alt=""></a>
          <a href="#"><img src="assets/images/solid5.jpg" alt=""></a>
        </div>
      </div>
      <div class="right">
        <div class="sub-item-right">
          <a href="#"><img src="assets/images/solid1.jpg" alt=""></a>
          <a href="#"><img src="assets/images/solid2.jpg" alt=""></a>
          <a href="#"><img src="assets/images/solid3.jpg" alt=""></a>
        </div>
      </div>
    </div>
  </div>
  </div>
  <!-- Sản phẩm -->

  <body oncontextmenu='return false' class='snippet-body'>
    <div class="bbb_viewed">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="bbb_main_container ">
              <div class="bbb_viewed_title_container">
                <h3 class="bbb_viewed_title">Sản phẩm Laptop chính hãng</h3>
                <div class="bbb_viewed_nav_container">
                  <div class="bbb_viewed_nav bbb_viewed_prev"><i class="fas fa-chevron-left"></i></div>
                  <div class="bbb_viewed_nav bbb_viewed_next"><i class="fas fa-chevron-right"></i></div>
                </div>
              </div>
              <div class="bbb_viewed_slider_container">
                <div class="owl-carousel owl-theme bbb_viewed_slider">
                  <?php foreach ($product_laptop as $key => $value) { ?>
                    <div class="owl-item">
                      <div class="bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
                      <div class="bbb_viewed_image">
                         <a href="?controller=detail&id=<?php echo $value['id'] ?>"><img src="<?php echo $value['img_link'] ?>" alt=""></a> 
                          
                        </div>
                        <div class="bbb_viewed_content text-center">
                          <div class="bbb_viewed_name"><a href="?controller=detail&id=<?php echo $value['product_id'] ?>"><?php echo $value['product_name']  ?></a></div>
                          <div><s><?php echo number_format($value['price'])  ?></s>VNĐ</div>
                          <span class="bbb_viewed_price"><?php echo number_format($value['price'] - ($value['price'] * 0.33))  ?>VNĐ</span> 
                          
                          <div class="product-grid">
                            <div class="product-images">
                              <ul class="product-links" style="">
                                <a class="add-to-cart" style="text-decoration:none;font-weight:bold;" href="?controller=addcart&id=<?php echo $value['id']; ?>">Đặt hàng</a>
                                <li><a href="#" style="margin-left:100px;" class="add-to-cart " data-tip="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                              </ul>
                            </div>
                          </div>
                        </div><button class="btn btn-primary" style=""><a href="?controller=addcart&id=<?php echo $value['id'] ?>" style="text-decoration:none;color: black;">Đặt hàng</a></button>
                        <ul class="item_marks">
                          <li class="item_mark item_discount">-33%</li>
                        </ul>

                      </div>
                    </div>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>

  <body oncontextmenu='return false' class='snippet-body'>
    <div class="bbb_viewed">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="bbb_main_container ">
              <div class="bbb_viewed_title_container">
                <h3 class="bbb_viewed_title">PC Độc quyền của Thế Giới Computer</h3>
                <div class="bbb_viewed_nav_container">
                  <div class="bbb_viewed_nav bbb_viewed_prev1"><i class="fas fa-chevron-left"></i></div>
                  <div class="bbb_viewed_nav bbb_viewed_next1"><i class="fas fa-chevron-right"></i></div>
                </div>
              </div>
              <div class="bbb_viewed_slider_container">
                <div class="owl-carousel owl-theme bbb_viewed_slider1">
                  <?php foreach ($product_pc as $key => $value) { ?>
                    <div class="owl-item">
                      <div class="bbb_viewed_item discount d-flex flex-column align-items-center justify-content-center text-center">
                      <div class="bbb_viewed_image">
                         <a href="?controller=detail_pc&id=<?php echo $value['id'] ?>"><img src="<?php echo $value['img_link'] ?>" alt=""></a> 
                          
                        </div>
                        <div class="bbb_viewed_content text-center">
                          <div class="bbb_viewed_name"><a href="?controller=detail_pc&id=<?php echo $value['id'] ?>"><?php echo $value['product_name']  ?></a></div>
                          <div><s><?php echo number_format($value['price'])  ?></s>VNĐ</div>
                          <span class="bbb_viewed_price"><?php echo number_format($value['price'] - ($value['price'] * 0.33))  ?>VNĐ</span>
                          
                          <div class="product-grid">
                            <div class="product-images">
                              <ul class="product-links" style="">
                                <a class="add-to-cart" style="text-decoration:none;font-weight:bold;" href="?controller=addcart&id=<?php echo $value['id']; ?>">Đặt hàng</a>
                                <li><a href="#" style="margin-left:100px;" class="add-to-cart " data-tip="Add to Wishlist"><i class="fas fa-heart"></i></a></li>
                              </ul>
                            </div>
                          </div>
                        </div>
                        <button class="btn btn-primary" style=""><a href="?controller=addcart&id=<?php echo $value['id'] ?>" style="text-decoration:none;color: black;">Đặt hàng</a></button>
                        <ul class="item_marks">
                          <li class="item_mark item_discount">-33%</li>
                        </ul>

                      </div>
                    </div>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>

  <!-- End -->

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
  <script type='text/javascript'>
    if ($('.bbb_viewed_slider').length) {
      var viewedSlider = $('.bbb_viewed_slider');

      viewedSlider.owlCarousel({
        loop: true,
        margin: 20,
        autoplay: true,
        autoplayTimeout: 50,
        nav: false,
        dots: false,
        responsive: {
          0: {
            items: 1
          },
          575: {
            items: 2
          },
          768: {
            items: 3
          },
          991: {
            items: 4
          },
          1199: {
            items: 6
          }
        }
      });

      if ($('.bbb_viewed_prev').length) {
        var prev = $('.bbb_viewed_prev');
        prev.on('click', function() {
          viewedSlider.trigger('prev.owl.carousel');
        });
      }

      if ($('.bbb_viewed_next').length) {
        var next = $('.bbb_viewed_next');
        next.on('click', function() {
          viewedSlider.trigger('next.owl.carousel');
        });
      }

    }

    if ($('.bbb_viewed_slider1').length) {
      var viewedSlider1 = $('.bbb_viewed_slider1');

      viewedSlider1.owlCarousel({
        loop: true,
        margin: 20,
        autoplay: true,
        autoplayTimeout: 50,
        nav: false,
        dots: false,
        responsive: {
          0: {
            items: 1
          },
          575: {
            items: 2
          },
          768: {
            items: 3
          },
          991: {
            items: 4
          },
          1199: {
            items: 6
          }
        }
      });


      if ($('.bbb_viewed_prev1').length) {
        var prev = $('.bbb_viewed_prev1');
        prev.on('click', function() {
          viewedSlider1.trigger('prev.owl.carousel');
        });
      }

      if ($('.bbb_viewed_next1').length) {
        var next = $('.bbb_viewed_next1');
        next.on('click', function() {
          viewedSlider1.trigger('next.owl.carousel');
        });
      }
    }
  </script>
  <div class="fb-customerchat" page_id="142092768006615"></div>
  <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
  <script src="assets/javascript/main.js"></script>
  <script type="text/javascript">
    $('#my-table').DataTable({
      "pageLength": 50
    });
  </script>
</body>

</html>