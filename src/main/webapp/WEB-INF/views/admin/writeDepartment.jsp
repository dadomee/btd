<%--
  Created by IntelliJ IDEA.
  User: dadomee
  Date: 2024-02-02
  Time: 오후 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<script>
    function oninputPhone(target) {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
    }
</script>
<head>
    <title>학과 등록</title>
</head>
<body>
<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-7 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">학과 정보</h4>
                        <p class="card-description"> 학과 정보를 입력해 주세요. </p>
                        <form class="forms-sample" action="/admin/writeDepartment" method="post">
                            <div class="form-group">
                                <label for="depart_name">학과명</label>
                                <input type="text" class="form-control w-50" id="depart_name" name="depart_name" placeholder="학과명">
                            </div>
                            <div class="form-group">
                                <label for="college_name">단과대</label>
                                <select class="form-control form-control-sm w-50" id="college_name" name="college_name">
                                    <option value="">단과대학을 선택하세요</option>
                                    <c:forEach var="coll" items="${college}">
                                        <option value="${coll.college_name}">${coll.college_name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="depart_tel">학과 전화번호</label>
                                <input class="form-control w-50" id="depart_tel" name="depart_tel" placeholder="전화번호를 입력하세요" oninput="oninputPhone(this)" maxlength="12"/>
                            </div>
                            <button type="submit" class="btn btn-gradient-primary me-2">Submit</button>
                            <button class="btn btn-light">Cancel</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</html>
<%@include file="bottom.jsp"%>
