<%--
  Created by IntelliJ IDEA.
  User: bc102
  Date: 2024-02-12
  Time: 오후 5:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>컴퓨터과학과 교수페이지</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../bootstrap/admin/images/favicon.png" rel="icon">
    <link href="../bootstrap/admin/images/favicon.png" rel="apple-touch-icon">

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

    <link rel="stylesheet" href="../bootstrap/admin/css/style.css">


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
            <c:set var ="prof_id" value ="${param.prof_id}"/>
<%--            <a class="nav-link" href="${pageContext.request.contextPath}/professor/professorManagement?prof_id=${prof_id}">--%>
<%--               교수 전용 페이지--%>
<%--            </a>--%>
            <a class="nav-link" href="#">
                <i class="mdi mdi-power">&nbsp;sign in</i>
            </a>
        </li>
    </ul>
    <div class="container d-flex align-items-center justify-content-between">

        <h1 class="logo"><a href="#">KNOU computer science</a></h1>

        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
        <nav id="navbar" class="navbar">
            <ul>
                <li><a class="nav-link scrollto" href="/">메인페이지</a></li>
                <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/professor/profInfo?prof_id=${prof_id}">교수소개</a></li>
                <li class="dropdown"><a href="#"><span>강의목록</span> <i class="bi bi-chevron-down"></i></a>
                    <ul>
                        <c:forEach var="profSub" items="${param.profSub}">
                            <li><a href="#">${profSub}</a></li>
                        </c:forEach>
                    </ul>
                </li>
                <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/professor/profDataBoard?prof_id=${prof_id}">자료실</a></li>
                <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/professor/profQnABoard?prof_id=${prof_id}">학습상담</a></li>
                <li><a class="nav-link scrollto" href="${pageContext.request.contextPath}/professor/profManagement?prof_id=${prof_id}">교수 전용 페이지</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
    </div>
</header>
<section id="hero" class="d-flex align-items-center">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 order-1 order-lg-2 hero-img" style="margin:0 auto; width:1000px;">
                <img src="../bootstrap/professor/img/profMain.jpg" class="img-fluid" alt="교수페이지사진">
            </div>
        </div>
    </div>
</section><!-- End Hero -->

