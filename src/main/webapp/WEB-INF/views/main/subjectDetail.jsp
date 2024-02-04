<%--
  Created by IntelliJ IDEA.
  User: zzzz
  Date: 2024-01-28
  Time: 오후 6:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <jsp:include page="../mainTop.jsp" flush="false"/>
    <link rel="stylesheet" href="../bootstrap/admin/vendors/css/vendor.bundle.base.css">
    <title>교과과정</title>
</head>
<body>
<div class="search-field d-none d-md-block" style="position:relative; left:600px;">
    <form class="d-flex align-items-center h-50" role="search" action="${pageContext.request.contextPath}/findSubDetail" method="post">
        <div class="input-group" style="width:500px;">
            <div class="input-group-prepend bg-transparent">
                <i class="input-group-text border-0 mdi mdi-magnify"></i>
            </div>
            <input type="text" name="searchString" class="form-control bg-transparent border-0" placeholder="검색할 내용을 입력하세요.">
            <input class="btn btn-primary" type="submit" value="search">
        </div>
    </form>
</div>
<table class="table">
    <thead>
    <tr align="center">
        <th scope="col">학년 / 학기 구분</th>
        <th scope="col">교과구분</th>
        <th scope="col">과목명</th>
        <th scope="col">수업유형</th>
        <th scope="col">시험유형</th>
        <th scope="col">중간과제 유무</th>
        <th scope="col">대체과제 유무</th>
    </tr>
    </thead>
    <tbody>
<c:forEach var="subDetail" items="${subDetail}">
    <tr align="center">
        <td>${subDetail.sub_year}학년 / ${subDetail.sub_semester}학기</td>
        <td>${subDetail.sub_type}</td>
        <td>${subDetail.sub_name}</td>
        <td>${subDetail.sub_detail_type} 수업</td>
        <td>${subDetail.sub_detail_exam} 시험</td>
        <td>${subDetail.sub_detail_project}</td>
        <td>${subDetail.sub_detail_substitute}</td>
    </tr>
</c:forEach>
    </tbody>
</table>
</body>
</html>
