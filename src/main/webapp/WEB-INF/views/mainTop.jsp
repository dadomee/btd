<%--
  Created by IntelliJ IDEA.
  Date: 2024-01-21
  Time: 오후 9:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>방송통신대학교 컴퓨터과학과</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../bootstrap/mainPage/img/favicon.png" rel="icon">
    <link href="../bootstrap/mainPage/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="../bootstrap/mainPage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../bootstrap/mainPage/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="../bootstrap/mainPage/endor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="../bootstrap/mainPage/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="../bootstrap/mainPage/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="../bootstrap/mainPage/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="../bootstrap/mainPage/css/style.css" rel="stylesheet">


    <link rel="stylesheet" href="../bootstrap/admin/vendors/mdi/css/materialdesignicons.min.css">
    <!-- =======================================================
    * Template Name: Resi
    * Updated: Jan 09 2024 with Bootstrap v5.3.2
    * Template URL: https://bootstrapmade.com/resi-free-bootstrap-html-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->

</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
    <ul class="navbar-nav navbar-nav-right" style="position : relative; left : 1500px;">
        <li class="nav-item nav-logout d-none d-lg-block">
            <a class="nav-link" href="#">
                <i class="mdi mdi-power">&nbsp;sign in</i>
            </a>
        </li>
    </ul>
    <div class="container d-flex align-items-center justify-content-between">

        <h1 class="logo"><a href="/">KNOU computer science</a></h1>

        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav id="navbar" class="navbar">
            <ul>
                <li><a class="nav-link scrollto active" href="main/departmentInfo">학과소개</a></li>
                <li class="dropdown"><a href="#"><span>교과정보</span> <i class="bi bi-chevron-down"></i></a>
                    <ul>
                        <li><a href="main/subjectDetail">교과과정</a></li>
                        <li><a href="main/subjectInfo">전공교과소개</a></li>
                    </ul>
                </li>
                <li class="dropdown"><a href="#"><span>학습정보</span> <i class="bi bi-chevron-down"></i></a>
                    <ul>
                        <li><a href="#">구분과목</a></li>
                        <li><a href="#">학과일정</a></li>
                    </ul>
                </li>
                <li><a class="nav-link scrollto " href="#">교수진소개</a></li>
                <li><a class="nav-link scrollto" href="#">공지사항</a></li>
                <li><a class="nav-link scrollto" href="#">지역대학</a></li>
<%--                <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>--%>
<%--                    <ul>--%>
<%--                        <li><a href="#"></a></li>--%>
<%--                        <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>--%>
<%--                            <ul>--%>
<%--                                <li><a href="#">Deep Drop Down 1</a></li>--%>
<%--                                <li><a href="#">Deep Drop Down 2</a></li>--%>
<%--                                <li><a href="#">Deep Drop Down 3</a></li>--%>
<%--                                <li><a href="#">Deep Drop Down 4</a></li>--%>
<%--                                <li><a href="#">Deep Drop Down 5</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>
<%--                        <li><a href="#">Drop Down 2</a></li>--%>
<%--                        <li><a href="#">Drop Down 3</a></li>--%>
<%--                        <li><a href="#">Drop Down 4</a></li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li><a class="nav-link scrollto" href="#contact">Contact</a></li>--%>
<%--                <li><a class="getstarted scrollto" href="#about">Get Started</a></li>--%>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
    </div>
</header><!-- End Header -->
<section id="hero" class="d-flex align-items-center">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 order-1 order-lg-2 hero-img" style="margin : 0 auto">
                <img src="../bootstrap/mainPage/img/hero-img.png" class="img-fluid" alt="학교사진">
            </div>
        </div>
    </div>
</section><!-- End Hero -->