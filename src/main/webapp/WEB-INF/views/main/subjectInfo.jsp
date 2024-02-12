<%--
  Created by IntelliJ IDEA.
  User: zzzz
  Date: 2024-01-28
  Time: 오후 5:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <jsp:include page="../mainTop.jsp" flush="false"/>
    <title>전공교과소개</title>
</head>
<body>
<div class="search-field d-none d-md-block" style="position:relative; left:600px;">
    <form class="d-flex align-items-center h-50" role="search" action="${pageContext.request.contextPath}/findSubject" method="post">
        <div class="input-group" style="width:500px;">
            <div class="input-group-prepend bg-transparent">
                <i class="input-group-text border-0 mdi mdi-magnify"></i>
            </div>
            <input type="text" name="searchString" class="form-control bg-transparent border-0" placeholder="검색할 내용을 입력하세요.">
            <input class="btn btn-primary" type="submit" value="search">
        </div>
    </form>
</div>
    <section id="features" class="features">
        <div class="container">
            <div class="row">
            <c:forEach var="subList" items="${subList}">
                <div class="col-lg-3 col-md-4 mt-4">
                    <div class="icon-box">
                            <i class="ri-database-2-line" style="color: #47aeff;"></i>
                            <h3><a href="${pageContext.request.contextPath}/main/subjectInfoContent?sub_id=${subList.sub_id}#services">${subList.sub_name}</a></h3>
                    </div>
                </div>
            </c:forEach>
            </div>
        </div>
    </section><!-- End Features Section -->
</body>
</html>
