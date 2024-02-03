<%--
  Created by IntelliJ IDEA.
  User: dadomee
  Date: 2024-02-03
  Time: 오후 5:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>교수 정보</title>
</head>
<body>
<div class="main-panel">
    <div class="content-wrapper">
        <h4 class="card-title">교수 상세 정보</h4>
        <p class ="card-description">교수 상세 정보를 확인하세요.</p>
        <div class="card">
            <div class ="card-body">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>번호</th>
                        <th>사진</th>
                        <th>성명</th>
                        <th>이메일</th>
                        <th>전화번호</th>
                        <th>담당학과</th>
                        <th>직함</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <c:forEach var="prof" items="${professor}">
                        <td>${prof.prof_id}</td>
                        <td><img src="../bootstrap/admin/images/faces/${prof.prof_img}"/></td>
                        <td><a href="${pageContext.request.contextPath}/admin/detailProfessor?id=${prof.prof_id}">${prof.prof_name}</a></td>
                        <td>${prof.prof_email}</td>
                        <td>${prof.prof_tel}</td>
                        <td>${prof.depart_name}</td>
                        <td><label class="badge badge-primary">교수</label></td>
                    </tr>

                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<%@include file="bottom.jsp"%>