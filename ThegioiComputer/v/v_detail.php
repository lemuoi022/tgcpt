<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/detail.css">

  <title>Document</title>
  <style>
    .outer-circle {
      margin-top: 50px;
    }

    .nav-products {
      padding-bottom: 200px;
    }

    .container {
      margin-bottom: 179px;
    }
  </style>
  <link rel='stylesheet' href='https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css'>
  <link rel="stylesheet" href="./style.css">

</head>

<body>
  <div class="res-web">
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v11.0" nonce="s09fLbP5"></script>

    <?php include('v_header.php') ?>
  </div>


  <main>
    <div class="container">

      <div class="grid product">
        <div class="column-xs-12 column-md-7">
          <div class="product-gallery">
            <div class="product-image">
              <img class="active" src="<?php echo $detail[0]['img_link'] ?>">
            </div>
            <ul class="image-list">
              <li class="image-item"><img src="<?php echo $detail[0]['img_link2'] ?>"></li>
              <li class="image-item"><img src="<?php echo $detail[0]['img_link3'] ?>"></li>
              <li class="image-item active"><img src="<?php echo $detail[0]['img_link'] ?>"></li>
            </ul>
          </div>
        </div>
        <div class="column-xs-12 column-md-5" style="font-family: 'Font Awesome 5 Brands'; margin-top:50px;">
          <h1><b><?php echo $detail1[0]['laptop_name'] ?></b</h1>
              <hr>
              <p>
              </p>
              <p><span style="color:#ff0000"><span style="font-size:20px"><strong>Khuy???n m??i:</strong><strong>&nbsp;(ch???n m???t&nbsp;trong c??c g??i sau)</strong></span></span></p>
              <p><span style="font-size:20px"><strong>&nbsp; + G??i 1: </strong>Nh???n ngay b??? qu?? l??n ?????n<strong>&nbsp;1,010,000&nbsp;</strong><em>(<strong><em> </em></strong>??p d???ng khi mua v???i gi??</em><em>&nbsp;ni??m y???t&nbsp;</em><span style="color:#ff0000"><strong><em>x0,490,000</em></strong></span><em>&nbsp;).</em></span></p>
              <p><span style="font-size:20px"><strong>&nbsp; &nbsp; &nbsp;???? </strong><a href="https://gearvn.com/products/ban-phim-dareu-lk185">B??n ph??m Dare-U LK185</a> tr??? gi??<strong> 170,000.</strong></span></p>
              <p><span style="font-size:20px"><strong>&nbsp; &nbsp; &nbsp;???? </strong><a href="https://gearvn.com/products/chuot-asus-ceberus">Chu???t Asus Cerberus</a>&nbsp;tr??? gi??<strong>&nbsp;590.000.</strong></span></p>
              <p><span style="font-size:20px"><strong>&nbsp; &nbsp; &nbsp;????&nbsp;</strong><a href="https://gearvn.com/search?type=product&amp;q=filter=((title%3Aproduct%20adjacent%20esp108))">L??t chu???t Dare-U ESP108</a>&nbsp;tr??? gi??<strong> 250.000.</strong></span></p>
              <p><span style="font-size:20px"><strong>&nbsp; + G??i 2:</strong><strong> </strong>Gi???m ngay <strong>400,000</strong>&nbsp;ch??? c??n <span style="color:#ff0000"><strong>x0,090,000</strong></span>&nbsp;<em>( gi?? khuy???n m??i ).</em></span></p>
              <hr>
              <h5 style="color: #000;font-weight:bold;">Kho h??ng:<?php
                                                                    if ($detail[0]['qty'] <= 1) {
                                                                      echo "H???t h??ng!";
                                                                    } else {
                                                                      echo $detail[0]['qty'];
                                                                    }
                                                                    ?> </h5>
              <h4 style="color: red;font-weight:bold;">Gi??: <?php echo number_format($detail[0]['price']); ?> VN??</h4>
              <a class="btn btn-danger" style="height: 50px; font-size: 25px;" href="?controller=addcart&id=<?php echo $detail[0]['id']; ?>">Mua ngay</a>
        </div>
      </div>
      <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Linh ki???n</th>
            <th scope="col">Th??ng s???</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">Monitor</th>
            <td><?php echo $detail1[0]['monitor'] ?></td>
          </tr>
          <tr>
            <th scope="row">CPU</th>
            <td><?php echo $detail1[0]['cpu'] ?></td>
          </tr>
          <tr>
            <th scope="row">RAM</th>
            <td><?php echo $detail1[0]['ram'] ?></td>
          </tr>
          <tr>
            <th scope="row">VGA</th>
            <td><?php echo $detail1[0]['vga'] ?></td>
          </tr>
          <tr>
            <th scope="row">SSD</th>
            <td><?php echo $detail1[0]['ssd'] ?></td>
          </tr>
          <tr>
            <th scope="row">HDD</th>
            <td><?php
                if ($detail1[0]['hdd']  == null) {
                  echo "C?? th??? n??ng c???p th??m";
                } else {
                  echo $detail1[0]['hdd'];
                }
                ?></td>
          </tr>

        </tbody>
      </table>
      <div>
        <h3 style="text-align:center; font-family: 'Font Awesome 5 Brands';">Gi???i thi???u s???n ph???m</h3>
        <h5 style="font-family: 'Font Awesome 5 Brands';"><?php echo $detail[0]['content'] ?></h5>
        <h4 style="font-family: 'Font Awesome 5 Brands';"><b>B??nh lu???n</b></h4>
        <form action="?controller=detail&id=<?php echo $detail1[0]['id'] ?>" method="post">
          <input type="hidden" name="id" value="<?php echo $detail[0]['product_id'] ?>">
          <textarea name="comment" id="" cols="143" rows="5" placeholder="N???i dung comment" class="form-control "></textarea>
          <div style="float: left;font-family: 'Font Awesome 5 Brands';">
            ????nh gi?? ????? h??i l??ng v??? s???n ph???m c???a ch??ng t??i :<div class="rateyo" id="rating" data-rateyo-rating="0" data-rateyo-num-stars="5" data-rateyo-score="3"></div>
            <span class='result'></span>
            <input type="hidden" name="rating">
          </div>
          <input style="float: right;" type="submit" value="G???i v?? ????nh gi??" name="rate" class="btn btn-info">
        </form>
      </div>
    </div>
    <h4 style="margin-left: 90px;">B??nh lu???n v?? ????nh gi??</h4>
    <div style="background-color: #ccc;height:100%;width:80%;margin-left:90px;" >
    <?php foreach ($cmt as $key => $value) { ?>
      
      <div>
        <div class="comment" style="">
          <div>
            <img src="./assets/images/avatar.png" alt="" width="50" height="50" style="margin-left:20px;margin-top:10px;border-radius:50%;" > <br>
            <b style="font-size: 15px;margin-left: 10px;"><?php echo $value['name'] ?></b>
          </div>
          <div style="margin-left:120px;margin-top:-70px;">
            <p><?php echo $value['comment'] ?></p>
            <div class="rateyo" id="rating" data-rateyo-rating="<?php echo $value['rate'] ?>"></div>
          </div>
        </div>
      </div> 
      <hr style="width:100%;background-color: #ccc; ">
    <?php } ?></div> <br><br>
  </main>
  <div class="row mx-auto container-fluid">
    <h4>S???n ph???m li??n quan</h4>
    <?php foreach ($product_related as $key => $value) { ?>
      <div class="product text-center col-lg-3 col-md-4 col-12">
        <a href="?controller=detail&id=<?php echo $value['id'] ?>"><img class="img-fluid mb-3" src="<?php echo $value['img_link'] ?>" alt=""></a>

        <h5 class="p-name"><?php echo $detail1[0]['laptop_name']; ?></h5>
        <h4 style="color:red"><?php echo number_format($value['price']) ?> VN??</h4>
        <button class="btn btn-primary">Th??m gi??? h??ng</button>

      </div>
    <?php } ?>
  </div>
  <!-- partial -->
  <script src="assets/javascript/detail.js"></script>
  <?php include('v_footer.php') ?>


  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
  <script>
    $(function() {
      $(".rateyo").rateYo().on("rateyo.change", function(e, data) {
        var rating = data.rating;
        $(this).parent().find('.score').text('score :' + $(this).attr('data-rateyo-score'));
        $(this).parent().find('.result').text('rating :' + rating);
        $(this).parent().find('input[name=rating]').val(rating);
        // Getter
        var readOnly = $("#rateYo").rateYo("option", "spacing"); //returns 10px

        // Setter
        $("#rateYo").rateYo("option", "spacing", "5px"); //returns a jQuery Element
        //add rating value to input field         
      });
    });

    
  </script>

  <script src="assets/javascript/main.js"></script>
</body>

</html>