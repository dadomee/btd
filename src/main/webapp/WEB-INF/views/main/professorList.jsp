<%--
  Created by IntelliJ IDEA.
  User: bc102
  Date: 2024-02-11
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <jsp:include page="../mainTop.jsp" flush="false"/>
    <title>교수진 목록</title>
</head>
<body>
<br><br><br><br><br>
    <main id="main">
<%--        <!-- ======= Breadcrumbs ======= -->--%>
<%--        <section id="breadcrumbs" class="breadcrumbs">--%>
<%--            <div class="container">--%>

<%--                <div class="d-flex justify-content-between align-items-center">--%>
<%--                </div>--%>

<%--            </div>--%>
<%--        </section><!-- End Breadcrumbs -->--%>
        <!-- ======= Portfolio Details Section ======= -->
        <section id="portfolio-details" class="portfolio-details">
            <div class="container">
                <div class="portfolio-info" align="center">
                    <c:forEach var="profList" items="${profList}">
                <div class="row gy-2">
                    <div class="col-lg-2">
                        <div class="portfolio-details-slider swiper" style="height:300px;position:relative; left:150px;">
                            <div class="swiper-wrapper align-items-center">
                                <div class="swiper-slide" style="width:150px; height:300px; position:relative; top:30px;">
                                    <img src="../bootstrap/admin/images/faces/${profList.prof_img}" alt="교수사진">
                                </div>
                            </div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="portfolio-description" style="position:relative; bottom:30px; left:150px;">
                            <br>
                            <h4>${profList.prof_name} 교수</h4>
                            <hr class="border border-secondary border-3 opacity-30" style="width:700px;">
                            <h6>이메일 : ${profList.prof_email}</h6>
                            <h6>연락처 : ${profList.prof_tel}</h6>
                            <h6>담당전공 : ${profList.depart_name}</h6>
                            <h6>담당과목 : ${profList.sub_name}</h6>
                        </div>
                    </div>
                    <section id="features" class="features" style="width:50px; height:50px; position:relative; left:150px;">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-1 col-md-1 mt-1">
                                    <div class="icon-box" style="width:40px; height:40px;">
                                        <a href="../professor/profMain?prof_id=${profList.prof_id}">
                                            <i class="ri-price-tag-2-line" style="color: #4233ff; position:relative; right:15px;"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                    </c:forEach>
                </div>
            </div>
        </section>
</body>
</html>
<jsp:include page="../mainBottom.jsp" flush="false"/>