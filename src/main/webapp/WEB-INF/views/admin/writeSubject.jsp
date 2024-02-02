<%--
  Created by IntelliJ IDEA.
  User: dadomee
  Date: 2024-02-02
  Time: 오후 8:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en,kr">
<head>
    <title>과목 등록</title>
</head>
<body>
<div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-10 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">과목 정보</h4>
                            <p class="card-description"> 과목 정보를 입력해 주세요. </p>
                            <form class="forms-sample">
                                <div class="form-group">
                                    <label for="sub_name">과목명</label>
                                    <input type="text" class="form-control" id="sub_name" name=sub_name" placeholder="과목명">
                                </div>
                                <div class="form-group">
                                    <label for="depart_name">학과</label>
                                    <select class="form-control form-control-sm" id="depart_name">
                                        <option value="">학과를 선택하세요</option>
                                        <c:forEach var="depart" items="${depart}">
                                            <option value="${depart.depart_name}">${depart.depart_name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="prof_name">담당 교수</label>
                                    <select class="form-control form-control-sm" id="prof_name">
                                        <option value="">담당 교수를 선택하세요</option>
                                        <c:forEach var="prof" items="${prof}">
                                            <option value="${prof.prof_name}">${prof.prof_name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="sub_semester">과목 학기</label>
                                    <select class="form-control form-control-sm" id="sub_semester">
                                        <option value="">학기를 선택하세요</option>
                                            <option value="1">1학기</option>
                                            <option value="2">2학기</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="sub_grade">과목 학년</label>
                                    <select class="form-control form-control-sm" id="sub_grade">
                                        <option value="">학년을 선택하세요</option>
                                        <option value="1">1학년</option>
                                        <option value="2">2학년</option>
                                        <option value="3">3학년</option>
                                        <option value="4">4학년</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="sub_info">과목 설명</label>
                                    <textarea class="form-control" id="sub_info" name="sub_info" rows="5"></textarea>
                                </div>
                                <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
                                <button class="btn btn-light">Cancel</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <%@include file="bottom.jsp"%>
</div>
