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
<script type="text/javascript">
    // 엔터 키 제출 방지 함수
    function preventSubmit(event) {
        // 눌린 키가 엔터 키인지 확인
        if (event.keyCode === 13) {
            event.preventDefault(); // 제출을 막음
        }
    }

    function checkSub(){
        let f = document.getElementById("form"); //DOM element
        if (f.sub_name.value == "") {
            alert("과목명을 입력하세요")
            f.sub_name.focus()
            return false
        }
        if (f.depart_name.value == "") {
            alert("학과명을 선택하세요")
            f.depart_name.focus()
            return false
        }
        if (f.prof_name.value == "") {
            alert("교수를 선택하세요")
            f.prof_name.focus()
            return false
        }
        if(f.sub_semester.value == ""){
            alert("학기를 선택하세요")
            f.sub_semester.focus()
            return false
        }
        if(f.sub_type.value == ""){
            alert("과목 구분을 선택하세요")ㄴ
            f.sub_type.focus()
            return false
        }
        if(f.sub_grade == "" ){
            alert("이수 학점을 입력하세요")
            f.sub_grade.focus()
            return false
        }
        document.f.submit();
    }
</script>
<%--
<script>
    function get_prof() {
        var depart_name = $("#depart_name").val();
        $.ajax({
            type: 'GET',
            url: '/admin/getProf',
            data: {depart_name: depart_name},
            dataType: 'text',
            success: function (result) {
                console.log("결과값" + result.prof_name);
                var profSelect = $("#prof_name");
                profSelect.empty(); // 기존 옵션 제거
                profSelect.append($("<option>").attr("value", "").text("담당 교수를 선택하세요"));
                $.each(result, function(index, value) {
                    profSelect.append($("<option>").attr("value", value).text(value));
                });
            }
        }).fail(function (error) {
            alert(error);
        })
    }
</script>
--%>

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
                            <form id="form" class="forms-sample" action ="writeSubject" onsubmit="checkSub()" method="post" onkeydown="preventSubmit(event)">
                                <div class="form-group">
                                    <label for="sub_name">과목명</label>
                                    <input type="text" class="form-control" id="sub_name" name="sub_name" placeholder="과목명">
                                </div>
                                <div class="form-group">
                                    <label for="depart_name">학과</label>
                                    <select class="form-control form-control-sm" name="depart_name"> <!--onchange="get_prof()"-->
                                        <option value="">학과를 선택하세요</option>
                                        <c:forEach var="depart" items="${depart}">
                                            <option value="${depart.depart_name}" id="depart_name">${depart.depart_name}</option>
                                        </c:forEach>
                                    </select>

                                </div>
                                <div class="form-group">
                                    <label for="prof_name">담당 교수</label>
                                    <select class="form-control form-control-sm" id="prof_name" name="prof_name">
                                        <option value="">담당 교수를 선택하세요</option>
                                        <c:forEach var="prof" items="${prof}">
                                            <option value="${prof.prof_name}">${prof.prof_name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="sub_type">과목 구분</label>
                                    <select class="form-control form-control-sm" id="sub_type" name="sub_type">
                                        <option value="">전공/교양 선택하세요</option>
                                        <option value="전공">전공</option>
                                        <option value="교양">교양</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="sub_semester">과목 학기</label>
                                    <select class="form-control form-control-sm" id="sub_semester" name="sub_semester">
                                        <option value="">학기를 선택하세요</option>
                                            <option value="1">1학기</option>
                                            <option value="2">2학기</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="sub_year">과목 학년</label>
                                    <select class="form-control form-control-sm" id="sub_year" name="sub_year">
                                        <option value="">학년을 선택하세요</option>
                                        <option value="1">1학년</option>
                                        <option value="2">2학년</option>
                                        <option value="3">3학년</option>
                                        <option value="4">4학년</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="sub_grade">이수학점</label>
                                    <input type="text" class="form-control" id="sub_grade" maxlength="1" name="sub_grade" placeholder="이수 학점을 입력하세요">
                                </div>
                                <div class="form-group">
                                    <label for="sub_info">과목 설명</label>
                                    <textarea class="form-control" id="sub_info" name="sub_info" rows="5"></textarea>
                                </div>
                                <button type="submit" formmethod="post" class="btn btn-gradient-primary me-2">Submit</button>
                                <%--<button class="btn btn-light">Cancel</button>--%>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <%@include file="bottom.jsp"%>
</div>
