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
    <title>과목 목록</title>
</head>
<body>
<div class="main-panel">
    <div class="content-wrapper">
        <div class="card">
            <div class ="card-body">
                <h4 class="card-title">과목 정보</h4>
                <p class ="card-description">과목 정보를 확인하세요.</p>
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>번호</th>
                        <th>과목명</th>
                        <th>학과</th>
                        <th>담당교수</th>
                        <th>과목 종류</th>
                        <th>학년</th>
                        <th>학기</th>
                        <th>이수학점</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="sub" items="${subject}">
                        <tr>
                            <td>${sub.sub_id}</td>
                            <td>${sub.sub_name}</td>
                            <td>${sub.depart_name}</td>
                            <td>${sub.prof_name}</td>
                            <td>${sub.sub_type}</td>
                            <td>${sub.sub_year}학년</td>
                            <td>${sub.sub_semester}학기</td>
                            <td>${sub.sub_grade}학점</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<%@include file="bottom.jsp"%>