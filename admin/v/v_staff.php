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
            <form method="get" action="?controller=search_staff" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                <div class="input-group">
                    <input type="hidden" name="controller" value="search_staff">
                    <input type="search" name="keyword" value="<?php echo (isset($_GET['keyword'])) ? $_GET['keyword'] : '' ?>" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="submit">
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
        <?php foreach($count_noti as $key => $value){ ?>
        <span class="badge badge-danger badge-counter"><?php echo $value['count'] ?></span>
        <?php } ?>
    </a>
    <!-- Dropdown - Alerts -->
    <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
        <h6 class="dropdown-header">
            Alerts Center
        </h6>
        <?php foreach($noti as $key => $value){?>
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
        <?php foreach($count_mess as $key => $value){ ?>
        <span class="badge badge-danger badge-counter"><?php echo $value['count'] ?></span>
        <?php } ?>
    </a>
    <!-- Dropdown - Messages -->
    <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
        <h6 class="dropdown-header">
            Message Center
        </h6>
        <?php foreach($mess as $key => $value) { ?>
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


            <!-- Content Row -->
            <div>
                <h4>QUẢN LÝ NHÂN VIÊN</h4>
                <div>
                    <button class="btn-primary" data-toggle="modal" data-target="#exampleModal">Thêm nhân viên</button>
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Thêm nhân viên</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <form action="?controller=add_staff" method="post">
                                    <div class="modal-body">

                                        <div class="form-group">
                                            <label for="">Tài khoản</label>
                                            <input type="text" class="form-control" name="user_staff">
                                        </div>
                                        <div class="form-group">
                                            <label for="">Mật khẩu</label>
                                            <input type="password" class="form-control" name="password_staff">
                                        </div>
                                        <div class="form-group">
                                            <label for="">Họ tên nhân viên</label>
                                            <input type="text" class="form-control" name="name_staff">
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <input type="submit" class="btn btn-primary" name="add-admin" value="Save changes"></input>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>

                    <button class="btn-primary"><a href="?controller=index" style="text-decoration: none; color:#fff;">Trang chủ</a></button>
                </div>
            </div>
            <hr>
            <!-- Button trigger modal -->


            <form action="">
                <table class="table table-white">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Username</th>
                            <th scope="col">Full Name</th>
                            <th scope="col">Option</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($data_staff as $key => $value) { ?>
                            <tr>
                                <th scope="row"><?php echo $value['id'] ?></th>
                                <td><?php echo $value['user_staff'] ?></td>
                                <td><?php echo $value['name_staff'] ?></td>
                                <td>
                                    <a href="?controller=handle&method=edit&id=<?php echo $value['id'] ?>" class="btn btn-success" style="font-size: 15px;">Sửa</a>
                                    <a href="?controller=handle&method=del&id=<?php echo $value['id'] ?>" class="btn btn-danger" name="" style="font-size: 15px;">Xóa</a>
                                </td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </form>

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->



    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <?php
    include('includes/scripts.php');
    include('includes/footer.php');
    ?>