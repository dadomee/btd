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
<script type="text/javascript">
    // 엔터 키 제출 방지 함수
    function preventSubmit(event) {
        // 눌린 키가 엔터 키인지 확인
        if (event.keyCode === 13) {
            event.preventDefault(); // 제출을 막음
        }
    }
    function oninputPhone(target) {
        target.value = target.value
            .replace(/[^0-9]/g, '')
            .replace(/(^02.{0}|^01.{1}|[0-9]{3,4})([0-9]{3,4})([0-9]{4})/g, "$1-$2-$3");
    }

    function checkSub(){
        let f = document.getElementById("f"); //DOM element
        if (f.depart_name.value == "") {
            alert("학과명을 입력하세요")
            f.depart_name.focus()
            return false
        }
        if (f.college_name.value == "") {
            alert("단과대학을 선택하세요")
            f.college_name.focus()
            return false
        }
        if (f.depart_tel.value == "") {
            alert("학과 전화번호를 입력하세요")
            f.depart_tel.focus()
            return false
        }
        document.f.submit();
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
                        <!-- form에 onsubmit = "return false" 달아 놓으면 엔터키 서브밋 방지-->
                        <form id="f" class="forms-sample" action="writeDepartment" onclick="javascript:checkSub()" method="post" onkeydown="preventSubmit(event)">
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
                            <button type="submit" class="btn btn-gradient-primary me-2" >Submit</button>
                            <button class="btn btn-light">Cancel</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</html>
<%@include file="bottom.jsp"%>
