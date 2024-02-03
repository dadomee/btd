<%--
  Created by IntelliJ IDEA.
  User: dadomee
  Date: 2024-02-02
  Time: 오후 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>학과 목록</title>
</head>
<body>
<div class="main-panel">
    <div class="content-wrapper">
        <div class="card">
            <div class ="card-body">
                <h4 class="card-title">학과 정보</h4>
                <p class ="card-description">학과 정보를 확인하세요.</p>
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>번호</th>
                        <th>단과대</th>
                        <th>학과명</th>
                        <th>학과 대표번호</th>
                        <th>학과장</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="depart" items="${department}">
                        <tr>
                            <td>${depart.depart_id}</td>
                            <td>${depart.college_name}</td>
                            <td>${depart.depart_name}</td>
                            <td>${depart.depart_tel}</td>
                            <td>${depart.prof_name}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<%@include file="bottom.jsp"%>