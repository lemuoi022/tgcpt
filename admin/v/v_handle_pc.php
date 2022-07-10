<?php
include('includes/header.php');
include('includes/navbar.php');
?>

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

            <!-- Sidebar Toggle (Topbar) -->
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                <i class="fa fa-bars"></i>
            </button>

            <!-- Topbar Search -->
            <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="button">
                            <i class="fas fa-search fa-sm"></i>
                        </button>
                    </div>
                </div>
            </form>

            <!-- Topbar Navbar -->
            <ul class="navbar-nav ml-auto">

                <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                <li class="nav-item dropdown no-arrow d-sm-none">
                    <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-search fa-fw"></i>
                    </a>
                    <!-- Dropdown - Messages -->
                    <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                        <form class="form-inline mr-auto w-100 navbar-search">
                            <div class="input-group">
                                <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </li>

                <!-- Nav Item - Alerts -->
                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-bell fa-fw"></i>
                        <!-- Counter - Alerts -->
                        <?php foreach ($count_noti as $key => $value) { ?>
                            <span class="badge badge-danger badge-counter"><?php echo $value['count'] ?></span>
                        <?php } ?>
                    </a>
                    <!-- Dropdown - Alerts -->
                    <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                        <h6 class="dropdown-header">
                            Alerts Center
                        </h6>
                        <?php foreach ($noti as $key => $value) { ?>
                            <a class="dropdown-item d-flex align-items-center" href="?controller=order_detail&id=<?php echo $value['id'] ?>">
                                <div class="mr-3">
                                    <div class="icon-circle bg-danger">
                                        <i class="fas fa-donate text-white"></i>
                                    </div>
                                </div>
                                <div>
                                    <div class="small text-gray-500"><?php echo $value['creat_at'] ?></div>
                                    <span class="font-weight-bold">

                                        <span class="font-weight-bold"><?php echo $value['name'] ?></span>
                                        <span class="font-weight-bold">thanh toán đơn hàng</span>
                                        <span class="font-weight-bold"><?php echo number_format($value['amount']) ?> VNĐ</span>
                                    </span>
                                </div>
                            </a>
                        <?php } ?>
                        <a class="dropdown-item text-center small text-gray-500" href="?controller=bill">Show All Alerts</a>
                    </div>
                </li>

                <!-- Nav Item - Messages -->

                <li class="nav-item dropdown no-arrow mx-1">
                    <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-envelope fa-fw"></i>
                        <!-- Counter - Messages -->
                        <?php foreach ($count_mess as $key => $value) { ?>
                            <span class="badge badge-danger badge-counter"><?php echo $value['count'] ?></span>
                        <?php } ?>
                    </a>
                    <!-- Dropdown - Messages -->
                    <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                        <h6 class="dropdown-header">
                            Message Center
                        </h6>
                        <?php foreach ($mess as $key => $value) { ?>
                            <a class="dropdown-item d-flex align-items-center" href="#">
                                <div class="dropdown-list-image mr-3">
                                    <img class="rounded-circle" src="img/undraw_profile_1.svg" alt="...">
                                    <div class="status-indicator bg-success"></div>
                                </div>
                                <div class="font-weight-bold">
                                    <div class="text-truncate"><?php echo $value['name'] ?></div>
                                    <div class="small text-gray-500"><?php echo $value['comment'] ?></div>
                                </div>
                            </a>
                        <?php } ?>
                        <a class="dropdown-item text-center small text-gray-500" href="?controller=rate">Read More Messages</a>
                    </div>
                </li>

                <div class="topbar-divider d-none d-sm-block"></div>

                <!-- Nav Item - User Information -->
                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <span class="mr-2 d-none d-lg-inline text-gray-600 small"><?php echo $user[0]['name_staff'] ?></span>
                        <img class="img-profile rounded-circle" src="<?php echo $user[0]['img_avatar'] ?>">
                    </a>
                    <!-- Dropdown - User Information -->
                    <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">
                            <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                            Profile
                        </a>
                        <a class="dropdown-item" href="#">
                            <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                            Settings
                        </a>
                        <a class="dropdown-item" href="#">
                            <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                            Activity Log
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                            <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                            Logout
                        </a>
                    </div>
                </li>
            </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
                <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Generate Report</a>
            </div>

            <!-- Content Row -->
            <div class="row">

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                        Earnings (Monthly)</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-success shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                        Earnings (Annual)</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-info shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Tasks
                                    </div>
                                    <div class="row no-gutters align-items-center">
                                        <div class="col-auto">
                                            <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                                        </div>
                                        <div class="col">
                                            <div class="progress progress-sm mr-2">
                                                <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Pending Requests Card Example -->
                <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-warning shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                        Pending Requests</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-comments fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Content Row -->
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Sửa chi tiết sản phẩm</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form action="?controller=handle_pc&method=edit&id=<?php echo $_GET['id'] ?>" method="post">
                <div class="modal-body">

                    <div class="form-group">
                        <label for="">Tên PC</label>
                        <input type="text" class="form-control" name="product_name" value="<?php echo $data_pc[0]['product_name']; ?>">
                    </div>
                    <?php if (isset($error['product_name'])) {
                        echo $error['product_name'];
                    }
                    ?>

                    <div class="form-group">
                        <label for="">Mainboard</label>
                        <input type="text" class="form-control" name="mainboard" value="<?php echo $data_pc[0]['mainboard']; ?>">
                    </div>
                    <?php if (isset($error['mainboard'])) {
                        echo $error['mainboard'];
                    }
                    ?>

                    <div class="form-group">
                        <label for="">Nguồn</label>
                        <input type="text" class="form-control" name="psu" value="<?php echo $data_pc[0]['psu']; ?>">
                    </div>
                    <?php if (isset($error['psu'])) {
                        echo $error['psu'];
                    }
                    ?>

                    <div class="form-group">
                        <label for="">CPU</label>
                        <input type="text" class="form-control" name="cpu" value="<?php echo $data_pc[0]['cpu']; ?>">
                    </div>
                    <?php if (isset($error['cpu'])) {
                        echo $error['cpu'];
                    }
                    ?>

                    <div class="form-group">
                        <label for="">RAM</label>
                        <input type="text" class="form-control" name="ram" value="<?php echo $data_pc[0]['ram']; ?>">
                    </div>
                    <?php if (isset($error['ram'])) {
                        echo $error['ram'];
                    }
                    ?>

                    <div class="form-group">
                        <label for="">VGA</label>
                        <input type="text" class="form-control" name="vga" value="<?php echo $data_pc[0]['vga']; ?>">
                    </div>
                    <?php if (isset($error['vga'])) {
                        echo $error['vga'];
                    }
                    ?>

                    <div class="form-group">
                        <label for="">SSD</label>
                        <input type="text" class="form-control" name="ssd" value="<?php echo $data_pc[0]['ssd']; ?>">
                    </div>
                    <?php if (isset($error['ssd'])) {
                        echo $error['ssd'];
                    }
                    ?>

                    <div class="form-group">
                        <label for="">Case PC</label>
                        <input type="text" class="form-control" name="case_pc" value="<?php echo $data_pc[0]['case_pc']; ?>">
                    </div>
                    <?php if (isset($error['case_pc'])) {
                        echo $error['case_pc'];
                    }
                    ?>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><a href="?controller=product_detail" style="text-decoration:none; color:#fff;">Close</a></button>
                    <input type="submit" class="btn btn-primary" name="edit_pc" value="Save changes"></input>
                </div>
            </form>

        </div>
    </div>
</div>
</div>
</div>
<hr>
<!-- Button trigger modal -->

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->




<?php
include('includes/scripts.php');
include('includes/footer.php');
?>