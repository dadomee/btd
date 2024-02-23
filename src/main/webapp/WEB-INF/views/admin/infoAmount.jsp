<%--
  Created by IntelliJ IDEA.
  User: dadomee
  Date: 2024-02-12
  Time: 오후 4:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>금액 안내</title>
</head>
<body>
<div class="main-panel">
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title"> 금액 안내 </h3>
        </div>
        <div class="row">
            <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">등록금</h4>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>구분</th>
                                <th>금액</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="tui" items="${tuition}">
                            <tr>
                                <td><label class="badge badge-info">${tui.char_type}</label></td>
                                <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${tui.char_amount}"/>원</td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">장학금 안내</h4>
                        <table class="table">
                            <thead>
                            <tr>
                                <th>구분</th>
                                <th>장학금이름</th>
                                <th>금액</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="schol" items="${scholarship}">
                            <tr>
                                <td><label class="badge badge-success">${schol.char_type}</label></td>
                                <td>${schol.char_name}</td>
                                <td><fmt:formatNumber type="number" maxFractionDigits="3" value="${schol.char_amount}"/>원</td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<%@include file="bottom.jsp"%>