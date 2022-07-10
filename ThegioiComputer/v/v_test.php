<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title></title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet">
    <style type="text/css">
        body {
            padding-top: 20px;
        }

        .carousel {
            margin-bottom: 0;
            padding: 0 40px 30px 40px;
        }

        .carousel-control {
            left: -12px;
            height: 40px;
            width: 40px;
            background: none repeat scroll 0 0 #222222;
            border: 4px solid #FFFFFF;
            border-radius: 23px 23px 23px 23px;
            margin-top: 90px;
        }

        .carousel-control.right {
            right: -12px;
        }

        .carousel-indicators {
            right: 50%;
            top: auto;
            bottom: -10px;
            margin-right: -19px;
        }

        /* The colour of the indicators */
        .carousel-indicators li {
            background: #cecece;
        }

        .carousel-indicators .active {
            background: #428bca;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div id="Carousel" class="carousel slide">
                    <ol class="carousel-indicators">
                        <li data-target="#Carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#Carousel" data-slide-to="1"></li>
                        <li data-target="#Carousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">

                        <div class="item active">
                            <div class="row ">
                                <?php foreach ($abcxyz as $key => $value) { ?>
                                    <div class="col-xs-12 col-sm-6 col-md-2"><a class="thumbnail"><img src="<?php echo $value['img_link'] ?>" alt="Image" style="max-width:100%;"></a>
                                        <p><?php echo $value['product_name'] ?></p>
                                        <p><?php echo $value['price'] ?></p>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="item ">
                            <div class="row ">
                                <?php foreach ($abcxyz as $key => $value) { ?>
                                    <div class="col-xs-12 col-sm-6 col-md-2"><a class="thumbnail"><img src="<?php echo $value['img_link'] ?>" alt="Image" style="max-width:100%;"></a>
                                        <p><?php echo $value['product_name'] ?></p>
                                        <p><?php echo $value['price'] ?></p>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>



                    </div> 
                    <a data-slide="prev" class="left carousel-control"></a>
                    <a data-slide="next" class="right carousel-control"></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Item slider end-->
    <script type="text/javascript">
        $(document).ready(function() {
            $('#Carousel').carousel({
                interval: 5000
            })
        });
    </script>
</body>

</html>