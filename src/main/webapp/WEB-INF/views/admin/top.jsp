
<%--
  Created by IntelliJ IDEA.
  User: dasomjin
  Date: 1/22/24
  Time: 3:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>대학교 관리자 페이지</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="../bootstrap/admin/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="../bootstrap/admin/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="../bootstrap/admin/css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="../bootstrap/admin/images/favicon.ico" />
</head>
<body>
<!-- partial:partials/_navbar.html -->
<nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="${pageContext.request.contextPath}/admin"><img src="../bootstrap/admin/images/logo.svg" alt="logo" /></a>
        <a class="navbar-brand brand-logo-mini" href="${pageContext.request.contextPath}/admin"><img src="../bootstrap/admin/images/logo-mini.svg" alt="logo" /></a>
    </div>
    <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="mdi mdi-menu"></span>
        </button>
        <div class="search-field d-none d-md-block">
            <form class="d-flex align-items-center h-100" action="#">
                <div class="input-group">
                    <div class="input-group-prepend bg-transparent">
                        <i class="input-group-text border-0 mdi mdi-magnify"></i>
                    </div>
                    <input type="text" class="form-control bg-transparent border-0" placeholder="검색할 내용을 입력하세요.">
                </div>
            </form>
        </div>
        <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
                <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                    <div class="nav-profile-img">
                        <img src="../bootstrap/admin/images/faces/face1.jpg" alt="image">
                        <span class="availability-status online"></span>
                    </div>
                    <div class="nav-profile-text">
                        <p class="mb-1 text-black">내 이름님</p>
                    </div>
                </a>
                <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                    <a class="dropdown-item" href="/">
                        <i class="mdi mdi-cached me-2 text-success"></i> 학과 페이지 </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">
                        <i class="mdi mdi-logout me-2 text-primary"></i> 로그아웃 </a>
                </div>
            </li>
            <li class="nav-item d-none d-lg-block full-screen-link">
                <a class="nav-link">
                    <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
                </a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="mdi mdi-email-outline"></i>
                    <span class="count-symbol bg-warning"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
                    <h6 class="p-3 mb-0">Messages</h6>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                            <img src="../bootstrap/admin/images/faces/face4.jpg" alt="image" class="profile-pic">
                        </div>
                        <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                            <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Mark send you a message</h6>
                            <p class="text-gray mb-0"> 1 Minutes ago </p>
                        </div>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                            <img src="../bootstrap/admin/images/faces/face2.jpg" alt="image" class="profile-pic">
                        </div>
                        <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                            <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Cregh send you a message</h6>
                            <p class="text-gray mb-0"> 15 Minutes ago </p>
                        </div>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                            <img src="../bootstrap/admin/faces/face3.jpg" alt="image" class="profile-pic">
                        </div>
                        <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                            <h6 class="preview-subject ellipsis mb-1 font-weight-normal">Profile picture updated</h6>
                            <p class="text-gray mb-0"> 18 Minutes ago </p>
                        </div>
                    </a>
                    <div class="dropdown-divider"></div>
                    <h6 class="p-3 mb-0 text-center">4 new messages</h6>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-bs-toggle="dropdown">
                    <i class="mdi mdi-bell-outline"></i>
                    <span class="count-symbol bg-danger"></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                    <h6 class="p-3 mb-0">Notifications</h6>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                            <div class="preview-icon bg-success">
                                <i class="mdi mdi-calendar"></i>
                            </div>
                        </div>
                        <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                            <h6 class="preview-subject font-weight-normal mb-1">Event today</h6>
                            <p class="text-gray ellipsis mb-0"> Just a reminder that you have an event today </p>
                        </div>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                            <div class="preview-icon bg-warning">
                                <i class="mdi mdi-settings"></i>
                            </div>
                        </div>
                        <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                            <h6 class="preview-subject font-weight-normal mb-1">Settings</h6>
                            <p class="text-gray ellipsis mb-0"> Update dashboard </p>
                        </div>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                            <div class="preview-icon bg-info">
                                <i class="mdi mdi-link-variant"></i>
                            </div>
                        </div>
                        <div class="preview-item-content d-flex align-items-start flex-column justify-content-center">
                            <h6 class="preview-subject font-weight-normal mb-1">Launch Admin</h6>
                            <p class="text-gray ellipsis mb-0"> New admin wow! </p>
                        </div>
                    </a>
                    <div class="dropdown-divider"></div>
                    <h6 class="p-3 mb-0 text-center">See all notifications</h6>
                </div>
            </li>
            <li class="nav-item nav-logout d-none d-lg-block">
                <a class="nav-link" href="#">
                    <i class="mdi mdi-power"></i>
                </a>
            </li>
            <li class="nav-item nav-settings d-none d-lg-block">
                <a class="nav-link" href="#">
                    <i class="mdi mdi-format-line-spacing"></i>
                </a>
            </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
        </button>
    </div>
</nav>
<!-- 사이드 바 -->
<!-- partial -->
<div class="container-fluid page-body-wrapper">
    <!-- partial:partials/_sidebar.html -->
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
            <li class="nav-item nav-profile">
                <a href="${pageContext.request.contextPath}/admin/myPage" class="nav-link">
                    <div class="nav-profile-image">
                        <img src="../bootstrap/admin/images/faces/face1.jpg" alt="profile">
                        <span class="login-status online"></span>
                        <!--change to offline or busy as needed-->
                    </div>
                    <div class="nav-profile-text d-flex flex-column">
                        <span class="font-weight-bold mb-2">내이름</span>
                        <span class="text-secondary text-small">직급</span>
                    </div>
                    <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="${pageContext.request.contextPath}/admin">
                    <span class="menu-title">대시보드</span>
                    <i class="mdi mdi-home menu-icon"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                    <span class="menu-title">학생 관리</span>
                    <i class="menu-arrow"></i>
                    <i class="mdi mdi-crosshairs-gps menu-icon"></i>
                </a>
                <div class="collapse" id="ui-basic">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="main.jsp">재학,복학,휴학 관리</a></li>
                        <li class="nav-item"> <a class="nav-link" href="main.jsp">성적 관리</a></li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#insert_tab" aria-expanded="false" aria-controls="ui-basic">
                    <span class="menu-title">등록</span>
                    <i class="menu-arrow"></i>
                    <i class="mdi mdi-contacts menu-icon"></i>
                </a>
                <div class="collapse" id="insert_tab">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/writeDepartment">학과 등록</a></li>
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/writeSubject">과목 등록</a></li>
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/writeProfessor">교수 등록</a></li>
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/writeIP">관리자 아이피 등록</a></li>
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/writeStaff">교직원 등록</a></li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#list_tab" aria-expanded="false" aria-controls="ui-basic">
                    <span class="menu-title">목록</span>
                    <i class="menu-arrow"></i>
                    <i class="mdi mdi-contacts menu-icon"></i>
                </a>
                <div class="collapse" id="list_tab">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/listDepartment">학과 목록</a></li>
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/listSubject">과목 목록</a></li>
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/listProfessor">교수 목록</a></li>
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/listIP">관리자 아이피 목록</a></li>
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/listStaff">교직원 목록</a></li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#classAndTest" aria-expanded="false" aria-controls="classAndTest">
                    <span class="menu-title">수강/시험</span>
                    <i class="mdi mdi-format-list-bulleted menu-icon"></i>
                </a>
                <div class="collapse" id="classAndTest">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/manageRegister">수강 신청 관리</a></li>
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/manageTest">시험 관리</a></li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                    <a class="nav-link" data-bs-toggle="collapse" href="#general-pages_" aria-expanded="false" aria-controls="general-pages_">
                        <span class="menu-title">학사 등록/장학</span>
                        <i class="menu-arrow"></i>
                        <i class="mdi mdi-medical-bag menu-icon"></i>
                    </a>
                    <div class="collapse" id="general-pages_">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/infoAmount"> 등록금, 장학금 안내 </a></li>
                            <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/listChar"> 등록금 청구 목록 </a></li>
                            <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/writeSchol"> 장학금 등록 </a></li>
                            <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/listSchol"> 장학금 감면 목록 </a></li>
                        </ul>
                    </div>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="main.jsp">
                    <span class="menu-title">Q&A</span>
                    <i class="mdi mdi-table-large menu-icon"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
                    <span class="menu-title">공지사항 등록</span>
                    <i class="menu-arrow"></i>
                    <i class="mdi mdi-medical-bag menu-icon"></i>
                </a>
                <div class="collapse" id="general-pages">
                    <ul class="nav flex-column sub-menu">
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/listNotice"> 공지사항 리스트 </a></li>
                        <li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/admin/writeNotice"> 공지사항 등록 </a></li>
                    </ul>
                </div>
            </li>
               <%-- <li class="nav-item sidebar-actions">
                  <span class="nav-link">
                    <div class="border-bottom">
                      <h6 class="font-weight-normal mb-3">Projects</h6>
                    </div>
                    <button class="btn btn-block btn-lg btn-gradient-primary mt-4">+ Add a project</button>
                    <div class="mt-4">
                      <div class="border-bottom">
                        <p class="text-secondary">Categories</p>
                      </div>
                      <ul class="gradient-bullet-list mt-4">
                        <li>Free</li>
                        <li>Pro</li>
                      </ul>
                    </div>
                  </span>
                </li>--%>
        </ul>
    </nav>