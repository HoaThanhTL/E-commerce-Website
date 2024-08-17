<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
          content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, AdminWrap lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, AdminWrap lite design, AdminWrap lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
          content="AdminWrap Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Admin TPK Bookshop</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/adminwrap-lite/"/>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../admin/images/Logo_Tab.png">
    <!-- Bootstrap Core CSS -->
    <link href="../admin/node_modules/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../admin/node_modules/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet">
    <!-- This page CSS -->
    <!-- chartist CSS -->
    <link href="../admin/node_modules/morrisjs/morris.css" rel="stylesheet">
    <!--c3 CSS -->
    <link href="../admin/node_modules/c3-master/c3.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../admin/html/css/style.css" rel="stylesheet">
    <!-- Dashboard 1 Page CSS -->
    <link href="../admin/html/css/pages/dashboard1.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="../admin/html/css/colors/default.css" id="theme" rel="stylesheet">
    <link rel="stylesheet" href="admin/style/header.css" type="text/css"/>
    
</head>
<body class="fix-header fix-sidebar card-no-border">
<div id="main-wrapper">
    <%@ include file="header.jsp" %>
    <%@ include file="slidebar.jsp" %>
    <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                <br> <br> <br>
                    <h3 class="text-themecolor">Top books</h3>
<!--                     <ol class="breadcrumb"> -->
<!--                         <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li> -->
<!--                         <li class="breadcrumb-item active">Top sales</li> -->
<!--                     </ol> -->
                </div>
                <div class="col-md-7 align-self-center">
                    <a href="logout"
                       class="btn waves-effect waves-light btn btn-info pull-right hidden-sm-down text-white">Log
                        out</a>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Sales Chart and browser state-->
            <!-- ============================================================== -->
<!--             <div class="row"> -->
<!--                 Column -->
<!--                 <div class="col-lg-8"> -->
<!--                     <div class="card"> -->
<!--                         <div class="card-body"> -->
<!--                             <div class="d-flex no-block"> -->
<!--                                 <div> -->
<!--                                     <h5 class="card-title mb-0">Sales Chart</h5> -->
<!--                                 </div> -->
<!--                                 <div class="ms-auto"> -->
<!--                                     <ul class="list-inline text-center font-12"> -->
<!--                                         <li><i class="fa fa-circle text-success"></i> SITE A</li> -->
<!--                                         <li><i class="fa fa-circle text-info"></i> SITE B</li> -->
<!--                                         <li><i class="fa fa-circle text-primary"></i> SITE C</li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <div class="" id="sales-chart" style="height: 355px;"></div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
                <!-- Column -->
<!--                 <div class="col-lg-4"> -->
<!--                     <div class="card"> -->
<!--                         <div class="card-body"> -->
<!--                             <div class="d-flex mb-4 no-block"> -->
<!--                                 <h5 class="card-title mb-0 align-self-center">Our Visitors</h5> -->
<!--                                 <div class="ms-auto"> -->
<!--                                     <select class="form-select b-0"> -->
<!--                                         <option selected="">Today</option> -->
<!--                                         <option value="1">Tomorrow</option> -->
<!--                                     </select> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <div id="visitor" style="height:260px; width:100%;"></div> -->
<!--                             <ul class="list-inline mt-4 text-center font-12"> -->
<!--                                 <li><i class="fa fa-circle text-purple"></i> Tablet</li> -->
<!--                                 <li><i class="fa fa-circle text-success"></i> Desktops</li> -->
<!--                                 <li><i class="fa fa-circle text-info"></i> Mobile</li> -->
<!--                             </ul> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
            <!-- ============================================================== -->
            <!-- End Sales Chart -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Projects of the Month -->
            <!-- ============================================================== -->
            <div class="row">
                <!-- Column -->
                <div class="col-lg-4 d-flex align-items-stretch">
                    <div class="card w-100">
                        <div class="up-img" style="background-image:url(../admin/images/big/NewMoon.jpg)"></div>
                        <div class="card-body">
                            <h5 class=" card-title">New Moon</h5>
                            <span class="label label-info label-rounded">Fiction and Literature</span>
                            <p class="mb-0 mt-3">By: Stephanie Meyer</p>
                            <div class="d-flex mt-3">
                                <a class="link" href="javascript:void(0)"></a>
                                <div class="ms-auto align-self-center">
                                    <a href="javascript:void(0)" class="link me-2"><i
                                            class="fa fa-heart-o"></i></a>
                                    <a href="https://www.goodreads.com/book/show/49041.New_Moon?from_search=true&from_srp=true&qid=4uvAz3fRvi&rank=1" class="link me-2" target="_blank"><i
                                            class="fa fa-share-alt"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Column -->
                <!-- Column -->
                <div class="col-lg-4 d-flex align-items-stretch">
                    <div class="card w-100">
                        <div class="up-img" style="background-image:url(../admin/images/big/atlasoftheheart.png)"></div>
                        <div class="card-body">
                            <h5 class=" card-title">Atlas of the Heart</h5>
                            <span class="label label-info label-rounded">Loving</span>
                            <p class="mb-0 mt-3">PhD.MSW</p>
                            <div class="d-flex mt-3">
                                <a class="link" href="javascript:void(0)"></a>
                                <div class="ms-auto align-self-center">
                                    <a href="javascript:void(0)" class="link me-2"><i
                                            class="fa fa-heart-o"></i></a>
                                    <a href="https://www.goodreads.com/book/show/58330567-atlas-of-the-heart?ref=nav_sb_ss_1_18" class="link me-2" target="_blank"><i
                                            class="fa fa-share-alt"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 d-flex align-items-stretch">
                    <div class="card w-100">
                        <div class="up-img" style="background-image:url(../admin/images/big/BLADE.jpg)"></div>
                        <div class="card-body">
                            <h5 class=" card-title">The Assassin's Blade</h5>
                            <span class="label label-info label-rounded">Science Fiction</span>
                            <p class="mb-0 mt-3">Sarah J Maas</p>
                            <div class="d-flex mt-3">
                                <a class="link" href="javascript:void(0)"></a>
                                <div class="ms-auto align-self-center">
                                    <a href="javascript:void(0)" class="link me-2"><i
                                            class="fa fa-heart-o"></i></a>
                                    <a href="https://www.goodreads.com/book/show/126062562-the-assassin-s-blade?ref=nav_sb_ss_1_15" class="link me-2" target="_blank"><i
                                            class="fa fa-share-alt"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 d-flex align-items-stretch">
                    <div class="card w-100">
                        <div class="up-img" style="background-image:url(../admin/images/big/fireorwater.jpg)"></div>
                        <div class="card-body">
                            <h5 class=" card-title">Of Fire and Water</h5>
                            <span class="label label-info label-rounded">Fantasty</span>
                            <p class="mb-0 mt-3">Cameo Renae</p>
                            <div class="d-flex mt-3">
                                <a class="link" href="javascript:void(0)"></a>
                                <div class="ms-auto align-self-center">
                                    <a href="javascript:void(0)" class="link me-2"><i
                                            class="fa fa-heart-o"></i></a>
                                    <a href="https://www.goodreads.com/book/show/53591324-of-fire-and-water?ref=nav_sb_ss_2_17" class="link me-2" target="_blank"><i
                                            class="fa fa-share-alt"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 d-flex align-items-stretch">
                    <div class="card w-100">
                        <div class="up-img" style="background-image:url(../admin/images/big/123201433.jpg)"></div>
                        <div class="card-body">
                            <h5 class=" card-title">A Demon's Guide to Wooing a Witch</h5>
                            <span class="label label-info label-rounded">Romance</span>
                            <p class="mb-0 mt-3">Sarah Hawley</p>
                            <div class="d-flex mt-3">
                                <a class="link" href="javascript:void(0)"></a>
                                <div class="ms-auto align-self-center">
                                    <a href="javascript:void(0)" class="link me-2"><i
                                            class="fa fa-heart-o"></i></a>
                                    <a href="https://www.goodreads.com/book/show/123201433-a-demon-s-guide-to-wooing-a-witch?ref=nav_sb_ss_1_33" class="link me-2" target="_blank"><i
                                            class="fa fa-share-alt"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-4 d-flex align-items-stretch">
                    <div class="card w-100">
                        <div class="up-img" style="background-image:url(../admin/images/big/BronzeMagic.jpg)"></div>
                        <div class="card-body">
                            <h5 class=" card-title">Bronze Magic</h5>
                            <span class="label label-info label-rounded">Fantasty</span>
                            <p class="mb-0 mt-3">Jenny Ealey</p>
                            <div class="d-flex mt-3">
                                <a class="link" href="javascript:void(0)"></a>
                                <div class="ms-auto align-self-center">
                                    <a href="javascript:void(0)" class="link me-2"><i
                                            class="fa fa-heart-o"></i></a>
                                    <a href="https://www.goodreads.com/book/show/45808028-bronze-magic?ref=nav_sb_ss_1_12" class="link me-2" target="_blank"><i
                                            class="fa fa-share-alt"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Projects of the Month -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Notification And Feeds -->
            <!-- ============================================================== -->
            <div class="row">
                <!-- Start Notification -->
<!--                 <div class="col-lg-6 col-md-12"> -->
<!--                     <div class="card card-body mailbox"> -->
<!--                         <h5 class="card-title">Notification</h5> -->
<!--                         <div class="message-center" style="height: 420px !important;"> -->
<!--                             Message -->
<!--                             <a href="#"> -->
<!--                                 <div class="btn btn-danger btn-circle"><i class="fa fa-link"></i></div> -->
<!--                                 <div class="mail-contnet"> -->
<!--                                     <h6 class="text-dark font-medium mb-0">Luanch Admin</h6> <span class="mail-desc">Just see the my new admin!</span> -->
<!--                                     <span class="time">9:30 AM</span> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                             Message -->
<!--                             <a href="#"> -->
<!--                                 <div class="btn btn-success btn-circle"><i class="fa fa-calendar-check-o"></i></div> -->
<!--                                 <div class="mail-contnet"> -->
<!--                                     <h6 class="text-dark font-medium mb-0">Event today</h6> <span class="mail-desc">Just a reminder that you have -->
<!--                                             event</span> <span class="time">9:10 AM</span> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                             Message -->
<!--                             <a href="#"> -->
<!--                                 <div class="btn btn-info btn-circle"><i class="fa fa-cog text-white"></i></div> -->
<!--                                 <div class="mail-contnet"> -->
<!--                                     <h6 class="text-dark font-medium mb-0">Settings</h6> <span class="mail-desc">You can customize this template as you -->
<!--                                             want</span> <span class="time">9:08 AM</span> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                             Message -->
<!--                             <a href="#"> -->
<!--                                 <div class="btn btn-primary btn-circle"><i class="fa fa-user"></i></div> -->
<!--                                 <div class="mail-contnet"> -->
<!--                                     <h6 class="text-dark font-medium mb-0">Pavan kumar</h6> <span class="mail-desc">Just see the my admin!</span> -->
<!--                                     <span -->
<!--                                             class="time">9:02 AM</span> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                             Message -->
<!--                             <a href="#"> -->
<!--                                 <div class="btn btn-info btn-circle"><i class="fa fa-cog text-white"></i></div> -->
<!--                                 <div class="mail-contnet"> -->
<!--                                     <h6 class="text-dark font-medium mb-0">Customize Themes</h6> <span -->
<!--                                         class="mail-desc">You can customize this template as you -->
<!--                                             want</span> <span class="time">9:08 AM</span> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                             Message -->
<!--                             <a href="#"> -->
<!--                                 <div class="btn btn-primary btn-circle"><i class="fa fa-user"></i></div> -->
<!--                                 <div class="mail-contnet"> -->
<!--                                     <h6 class="text-dark font-medium mb-0">Pavan kumar</h6> <span class="mail-desc">Just see the my admin!</span> -->
<!--                                     <span -->
<!--                                             class="time">9:02 AM</span> -->
<!--                                 </div> -->
<!--                             </a> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
                <!-- End Notification -->
                <!-- Start Feeds -->
<!--                 <div class="col-lg-6"> -->
<!--                     <div class="card"> -->
<!--                         <div class="card-body"> -->
<!--                             <h5 class="card-title">Feeds</h5> -->
<!--                             <ul class="feeds"> -->
<!--                                 <li> -->
<!--                                     <div class="bg-light-info"><i class="fa fa-bell-o"></i></div> -->
<!--                                     You have 4 pending -->
<!--                                     tasks. <span class="text-muted">Just Now</span> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <div class="bg-light-success"><i class="fa fa-server"></i></div> -->
<!--                                     Server #1 -->
<!--                                     overloaded.<span class="text-muted">2 Hours ago</span> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <div class="bg-light-warning"><i class="fa fa-shopping-cart"></i></div> -->
<!--                                     New -->
<!--                                     order received.<span class="text-muted">31 May</span> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <div class="bg-light-danger"><i class="fa fa-user"></i></div> -->
<!--                                     New user -->
<!--                                     registered.<span class="text-muted">30 May</span> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <div class="bg-light-inverse"><i class="fa fa-bell-o"></i></div> -->
<!--                                     New Version -->
<!--                                     just arrived. <span class="text-muted">27 May</span> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <div class="bg-light-info"><i class="fa fa-bell-o"></i></div> -->
<!--                                     You have 4 pending -->
<!--                                     tasks. <span class="text-muted">Just Now</span> -->
<!--                                 </li> -->
<!--                                 <li> -->
<!--                                     <div class="bg-light-danger"><i class="fa fa-user"></i></div> -->
<!--                                     New user -->
<!--                                     registered.<span class="text-muted">30 May</span> -->
<!--                                 </li> -->
<!--                             </ul> -->
<!--                         </div> -->
<!--                     </div> -->
                </div>
                <!-- End Feeds -->
            </div>
            <!-- ============================================================== -->
            <!-- End Notification And Feeds -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- End Page Content -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Container fluid  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- footer -->
        <!-- ============================================================== -->
        <footer class="footer"> © 2023 Admin by <a href="#">Cao Thi Ngoc Phung, Nguyen Phu Thanh, Bui Quoc Khang</a></footer>
        <!-- ============================================================== -->
        <!-- End footer -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Page wrapper  -->
    <!-- ============================================================== -->
</div>
<!-- ============================================================== -->
<!-- End Wrapper -->
<!-- ============================================================== -->
<!-- ============================================================== -->
<!-- All Jquery -->
<!-- ============================================================== -->
<script src="../admin/node_modules/jquery/jquery.min.js"></script>
<!-- Bootstrap popper Core JavaScript -->
<script src="../admin/node_modules/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- slim-scrollbar scrollbar JavaScript -->
<script src="../admin/html/js/perfect-scrollbar.jquery.min.js"></script>
<!--Wave Effects -->
<script src="../admin/html/js/waves.js"></script>
<!--Menu sidebar -->
<script src="../admin/html/js/sidebarmenu.js"></script>
<!--Custom JavaScript -->
<script src="../admin/html/js/custom.min.js"></script>
<!-- ============================================================== -->
<!-- This page plugins -->
<!-- ============================================================== -->
<!--morris JavaScript -->
<script src="../admin/node_modules/raphael/raphael-min.js"></script>
<script src="../admin/node_modules/morrisjs/morris.min.js"></script>
<!--c3 JavaScript -->
<script src="../admin/node_modules/d3/d3.min.js"></script>
<script src="../admin/node_modules/c3-master/c3.min.js"></script>
<!-- Chart JS -->
<script src="../admin/html/js/dashboard1.js"></script>
</body>
</html>