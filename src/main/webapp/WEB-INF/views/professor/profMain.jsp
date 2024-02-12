<%--
  Created by IntelliJ IDEA.
  User: bc102
  Date: 2024-02-12
  Time: 오후 5:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <jsp:include page="profTop.jsp" flush="false"/>
    <title>Title</title>
</head>
<body>
<section id="hero" class="d-flex align-items-center">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 order-1 order-lg-2 hero-img" style="margin:0 auto; width:1000px;">
                <img src="../bootstrap/professor/img/profMain.jpg" class="img-fluid" alt="교수페이지사진">
            </div>
        </div>
    </div>
</section><!-- End Hero -->
<c:forEach var="profInfo" items="${profInfo}">
<div class="col-md-4 stretch-card grid-margin">
    <div class="card bg-gradient-info card-img-holder text-white">
        <div class="card-body">
            <img src="../bootstrap/admin/images/dashboard/circle.svg" class="card-img-absolute" alt="circle-image" />
            <h2 class="font-weight-normal mb-3">${profInfo.prof_name}교수<i class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
            </h2>
            <h2 class="mb-5">${profInfo.depart_name}</h2>
            <h6 class="card-text">Decreased by 10%</h6>
        </div>
    </div>
</div>


</c:forEach>
<jsp:include page="profBottom.jsp" flush="false"/>
