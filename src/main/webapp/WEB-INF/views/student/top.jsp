<%--
  Created by IntelliJ IDEA.
  User: jaehee
  Date: 2024-02-03
  Time: 오후 11:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
-->
<!-- beautify ignore:start -->
<html
        lang="en"
        class="light-style layout-menu-fixed"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="../bootstrap/student/assets/"
        data-template="vertical-menu-template-free"
>
<head>
    <meta charset="utf-8" />
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>학생 정보 시스템</title>

    <meta name="description" content="Most Powerful &amp; Comprehensive Bootstrap 5 HTML Admin Dashboard Template built for developers!" />
    <meta name="keywords" content="dashboard, bootstrap 5 dashboard, bootstrap 5 design, bootstrap 5">
    <!-- Canonical SEO -->
    <link rel="canonical" href="https://themeselection.com/item/sneat-bootstrap-html-admin-template/">


    <!-- ? PROD Only: Google Tag Manager (Default ThemeSelection: GTM-5DDHKGP, PixInvent: GTM-5J3LMKC) -->
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-5DDHKGP');</script>
    <!-- End Google Tag Manager -->

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="../bootstrap/student/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="../bootstrap/student/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../bootstrap/student/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../bootstrap/student/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../bootstrap/student/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="../bootstrap/student/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <link rel="stylesheet" href="../bootstrap/student/assets/vendor/libs/apex-charts/apex-charts.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="../bootstrap/student/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="../bootstrap/student/assets/js/config.js"></script>
</head>

<body>
<!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar">
    <div class="layout-container">
        <!-- Menu -->

        <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
            <div class="app-brand demo">
                    <a class="navbar-brand brand-logo" href="${pageContext.request.contextPath}/student"><img src="../bootstrap/admin/images/logo-header.png" style="width:200px; height:40px;"
                                                                                                            alt="logo" /></a>

                <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
                    <i class="bx bx-chevron-left bx-sm align-middle"></i>
                </a>
            </div>

            <div class="menu-inner-shadow"></div>

            <ul class="menu-inner py-1 pb-2">
                <li class="nav-item nav-profile">
                    <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                        <div class="avatar avatar-online">
                            <img src="../bootstrap/student/assets/img/jaehee.jpg" alt class="w-px-70 h-auto rounded-circle" />
                            <span class="font-weight-bold mx-2 mb-2">김재희</span>
                            <span class="text-secondary text-small">(컴퓨터과학과)</span>
                        </div>
                    </a>
                </li>

                <li class="menu-item py-2 px-3">
                    <a href="${pageContext.request.contextPath}/student/writeStudent">
                    <button type="button" class="btn btn-sm rounded-pill btn-outline-primary">
                        <span class="tf-icons bx bx-pie-chart-alt"></span>&nbsp; 마이페이지
                    </button>
                    </a>
                    <a href="${pageContext.request.contextPath}/student">
                    <button type="button" class="btn btn-sm rounded-pill btn-outline-secondary">
                        <span class="tf-icons bx bx-bell"></span>&nbsp; 로그아웃
                    </button>
                    </a>
                </li>

                <!-- Dashboard -->
                <li class="menu-item active py-3">
                    <a href="${pageContext.request.contextPath}/student" class="menu-link">
                        <i class="menu-icon tf-icons bx bx-home-circle"></i>
                        <div data-i18n="Analytics">학생정보시스템 홈</div>
                    </a>
                </li>

                <!-- Layouts -->
                <li class="menu-item open">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-layout"></i>
                        <div data-i18n="Layouts">종합 학사 정보</div>
                    </a>

                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student/detailStudent" class="menu-link">
                                <div data-i18n="Without menu">학생 정보⭐</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Without navbar">학적변동⭐</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Container">등록 및 장학 정보⭐</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Fluid">수강 내역</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Fluid">복수/연계전공</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Fluid">졸업</div>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="menu-header small text-uppercase">
                    <span class="menu-header-text">Details</span>
                </li>
                <li class="menu-item open">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-dock-top"></i>
                        <div data-i18n="Account Settings">수강</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student/regSubject" class="menu-link">
                                <div data-i18n="Account">⭐수강 신청⭐</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Account">수강 교과목 정보</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Notifications">형성평가</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Connections">출석 수업</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Connections">대체 시험</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Connections">중간/과제물 시험</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Connections">기말 시험</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item open">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-lock-open-alt"></i>
                        <div data-i18n="Authentications">성적</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link" target="_blank">
                                <div data-i18n="Basic">성적 조회</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link" target="_blank">
                                <div data-i18n="Basic">객관식시험정답/답안</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link" target="_blank">
                                <div data-i18n="Basic">시험유형별 성적 조회</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link" target="_blank">
                                <div data-i18n="Basic">조회</div>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="menu-item open">
                    <a href="javascript:void(0);" class="menu-link menu-toggle">
                        <i class="menu-icon tf-icons bx bx-cube-alt"></i>
                        <div data-i18n="Misc">신청</div>
                    </a>
                    <ul class="menu-sub">
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Error">시험 결시자 성적 인정 신청</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Under Maintenance">수강지역대학 변경 신청</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Under Maintenance">복수 전공 신청</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Under Maintenance">휴학 신청</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Under Maintenance">자퇴 신청</div>
                            </a>
                        </li>
                        <li class="menu-item">
                            <a href="${pageContext.request.contextPath}/student" class="menu-link">
                                <div data-i18n="Under Maintenance">졸업 유보 신청</div>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- Misc -->
                <li class="menu-header small text-uppercase"><span class="menu-header-text">Misc</span></li>
                <li class="menu-item">
                    <a
                            href="https://github.com/themeselection/sneat-html-admin-template-free/issues"
                            target="_blank"
                            class="menu-link"
                    >
                        <i class="menu-icon tf-icons bx bx-support"></i>
                        <div data-i18n="Support">Support</div>
                    </a>
                </li>
                <li class="menu-item">
                    <a
                            href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/"
                            target="_blank"
                            class="menu-link"
                    >
                        <i class="menu-icon tf-icons bx bx-file"></i>
                        <div data-i18n="Documentation">Documentation</div>
                    </a>
                </li>
            </ul>
        </aside>
        <!-- / Menu -->

        <!-- Layout container -->
        <div class="layout-page">
            <!-- Navbar -->

            <nav
                    class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
                    id="layout-navbar"
            >
                <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
                    <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                        <i class="bx bx-menu bx-sm"></i>
                    </a>
                </div>

                <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
                    <!-- Search -->
                    <div class="navbar-nav align-items-center">
                        <div class="nav-item d-flex align-items-center">
                            <i class="bx bx-search fs-4 lh-0"></i>
                            <input
                                    type="text"
                                    class="form-control border-0 shadow-none"
                                    placeholder="Search..."
                                    aria-label="Search..."
                            />
                        </div>
                    </div>
                    <!-- /Search -->

                    <ul class="navbar-nav flex-row align-items-center ms-auto">
                        김재희님 환영합니다. &nbsp&nbsp&nbsp&nbsp
                        <!-- Place this tag where you want the button to render. -->
                        <!-- 마이 프로필 -->
                        <a href="${pageContext.request.contextPath}/student"> <i class="bx bx-user me-2"></i>&nbsp&nbsp </a>
                        <!-- 설정 -->
                        <a href="${pageContext.request.contextPath}/student"> <i class="bx bx-cog me-2"></i>&nbsp&nbsp </a>
                        <!-- 로그아웃 -->
                        <a href="${pageContext.request.contextPath}/student"> <i class="bx bx-power-off me-2"></i> </a>

                        <!-- User -->
                        <li class="nav-item navbar-dropdown dropdown-user dropdown">
                            <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                                <div class="avatar avatar-online">
                                    <img src="../bootstrap/student/assets/img/jaehee.jpg" alt class="w-px-30 h-auto rounded-circle" />
                                </div>
                            </a>

                            <ul class="dropdown-menu dropdown-menu-end">
                                <li>
                                    <a class="dropdown-item" href="#">
                                        <div class="d-flex">
                                            <div class="flex-shrink-0 me-3">
                                                <div class="avatar avatar-online">
                                                    <img src="../bootstrap/student/assets/img/jaehee.jpg" alt class="w-px-40 h-auto rounded-circle" />
                                                </div>
                                            </div>
                                            <div class="flex-grow-1">
                                                <span class="fw-semibold d-block">${stu_name}김재희</span>
                                                <small class="text-muted">${stu_role}재학생</small>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <div class="dropdown-divider"></div>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#">
                                        <i class="bx bx-user me-2"></i>
                                        <span class="align-middle">My Profile</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#">
                                        <i class="bx bx-cog me-2"></i>
                                        <span class="align-middle">Settings</span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="#">
                        <span class="d-flex align-items-center align-middle">
                          <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                          <span class="flex-grow-1 align-middle">Billing</span>
                          <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                        </span>
                                    </a>
                                </li>
                                <li>
                                    <div class="dropdown-divider"></div>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="auth-login-basic.html">
                                        <i class="bx bx-power-off me-2"></i>
                                        <span class="align-middle">Log Out</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!--/ User -->
                    </ul>
                </div>
            </nav>

            <!-- / Navbar -->