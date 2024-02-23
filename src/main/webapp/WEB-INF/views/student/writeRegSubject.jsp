<%--
  Created by IntelliJ IDEA.
  User: jaehee
  Date: 2024-02-03
  Time: 오후 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="top.jsp"%>

<script>
    function writeRegSubject() {
        f.action = "student/regSubject";
        f.submit();
    }

</script>

<!-- Content wrapper -->
<div class="content-wrapper">
    <!-- Content -->
    <div class="container-xxl flex-grow-1 container-p-y">
        <!-- Custom style1 Breadcrumb -->
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb breadcrumb-style1">
                <li class="breadcrumb-item">
                    <a href="javascript:void(0);">Home</a>
                </li>
                <li class="breadcrumb-item">
                    <a href="javascript:void(0);">수강</a>
                </li>
                <li class="breadcrumb-item active">수강 신청</li>
            </ol>
        </nav>
        <!--/ Custom style1 Breadcrumb -->
        <h4 class="fw-bold py-3 mb-4">수강 신청/변경</h4>

        <div class="card">
            <h5 class="card-header">학생 정보</h5>
            <div class="card-body">

                <!-- 년도/학기/학번 -->
                <div class="table-responsive text-nowrap">
                    <table class="table table-bordered">
                        <thead>
                        <colgroup>
                            <col style="width: 17%;">
                            <col style="width: 17%;">
                            <col style="width: 16%;">
                            <col style="width: 16%;">
                            <col style="width: 17%;">
                            <col style="width: 17%;">
                        </colgroup>
                        <tr>
                            <th class="table-primary">년도</th>
                            <th>${year}</th>
                            <th class="table-primary">학기</th>
                            <th>${semester}</th>
                            <th class="table-primary">학번</th>
                            <th>${detailStudent.stu_classof}</th>
                        </tr>
                        </thead>
                    </table>
                </div>
                <div class="nav-align-top mb-4">
                    <div class="demo-inline-spacing py-3">
                        <button href="" type="button" class="btn btn-secondary" style="float: right">출석수업유형변경</button>
                        <button href="" type="button" class="btn btn-secondary" style="float: right">출석수업장소변경</button>
                    </div>

                    <!-- 학생 정보 -->
                    <div class="table-responsive text-nowrap">
                        <table class="table table-bordered">
                            <thead>
                            <colgroup>
                                <col style="width: 17%;">
                                <col style="width: 17%;">
                                <col style="width: 16%;">
                                <col style="width: 16%;">
                                <col style="width: 17%;">
                                <col style="width: 17%;">
                            </colgroup>
                            <tr>
                                <th class="table-primary">성명</th>
                                <th>${detailStudent.stu_name}</th>
                                <th class="table-primary">학과전공</th>
                                <th>${detailStudent.stu_major}</th>
                                <th class="table-primary">지역대학</th>
                                <th>${detailStudent.local_name}</th>
                            </tr>
                            <tr>
                                <th class="table-primary">학적 상태</th>
                                <th>${detailStudent.stu_role}</th>
                                <th class="table-primary">예상 등록금</th>
                                <th>${tuitionStudent.tui_amount}원</th>
                                <th class="table-primary">차등납부대상자여부</th>
                                <th>
                                <c:if test="${tuitionStudent.tui_status eq 'Y'}">N</c:if>
                                <c:if test="${tuitionStudent.tui_status eq 'N'}">Y</c:if>
                                </th>
                            </tr>
                            <tr>
                                <th class="table-primary">수강유형</th>
                                <th>일부과목지정</th>
                                <th class="table-primary">수강신청완료일자</th>
                                <th>완료일자 추가...</th>
                                <th class="table-primary">수강신청최종일자</th>
                                <th>최종완료일자 추가...</th>
                            </tr>
                            </thead>
                        </table>
                    </div>
                    &nbsp
                    <!-- 수강 가능 학점 -->
                    <div class="table-responsive text-nowrap">
                        <table class="table table-bordered">
                            <thead>
                            <colgroup>
                                <col style="width: 17%;">
                                <col style="width: 17%;">
                                <col style="width: 16%;">
                                <col style="width: 16%;">
                                <col style="width: 17%;">
                                <col style="width: 17%;">
                            </colgroup>
                            <tr class="table-primary" style="text-align: center">
                                <th>교양</th>
                                <th>전공</th>
                                <th>일반선택</th>
                                <th>총 취득 학점</th>
                                <th>수강 가능 학점</th>
                                <th>수강 신청 학점</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr style="text-align: center">
                                <td>${gradeStudent.general_total}</td>
                                <td>${gradeStudent.major_total}</td>
                                <td>${standGrade}</td>
                                <td>${gradeStudent.total}</td>
                                <td>남은학점?</td>
                                <td>아래신청학점총</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="demo-inline-spacing py-3">
                        <button href="" type="button" class="btn btn-primary" style="float: right">수강신청완료</button>
                        <button href="" type="button" class="btn btn-secondary" style="float: right">수강신청안내</button>

                    </div>
                    <!-- 수강 신청 완료 과목 정보 -->
                    <div class="table-responsive text-nowrap">
                        <table class="table table-bordered">
                            <thead>
                            <tr class="table-primary" style="text-align: center">
                                <th>개설학과</th>
                                <th>학년</th>
                                <th>과목명</th>
                                <th>과목 번호</th>
                                <th>과목 구분</th>
                                <th>수업 유형</th>
                                <th>학점</th>
                                <th>신청 취소</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:if test="${empty listRegSubject}">
                            <tr>
                                <td colspan="8"></td>
                            </tr>
                            </c:if>
                            <c:if test="${not empty listRegSubject}">
                            <c:forEach var="regSubject" items="${listRegSubject}">
                            <tr style="text-align: center">
                                <td>${regSubject.depart_name}</td>
                                <td>${regSubject.sub_year}</td>
                                <td>${regSubject.sub_name}</td>
                                <td>${regSubject.sub_id}</td>
                                <td>${regSubject.sub_type}</td>
                                <td>강의유형 추가...</td>
                                <td>${regSubject.sub_grade}</td>
                                <td><button href="" type="button" class="btn-sm btn-outline-secondary">취소</button></td>
                            </tr>
                            </c:forEach>
                            </c:if>
                            </tbody>
                        </table>
                    </div>
                    <div class="demo-inline-spacing py-3 ">
                        <div class="nav-item d-flex align-items-end" style="float: right">
                            <div class="input-group">
                                <label class="input-group-text" for="inputGroupSelect01">개설학과</label>
                                <select class="form-select" id="inputGroupSelect01">
                                    <option selected>전체</option>
                                    <option value="1">컴퓨터과학과</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                </select>
                            </div>
                            &nbsp;&nbsp;
                            <div class="input-group">
                                <label class="input-group-text" for="inputGroupSelect01">학년</label>
                                    <select class="form-select" id="inputGroupSelect02">
                                        <option selected>전체</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                    </select>
                            </div>
                            &nbsp;&nbsp;
                            <div class="input-group input-group-merge">
                                <span class="input-group-text" id="basic-addon-search31"><i class="bx bx-search"></i></span>
                                <input
                                        type="text"
                                        class="form-control"
                                        placeholder="Search..."
                                        aria-label="Search..."
                                        aria-describedby="basic-addon-search31"
                                        style="width: 20px;"
                                />
                                <button href="" type="button" class="btn btn-outline-primary" style="float: right">조회</button>

                            </div>
                        </div>
                    </div>
                    <!-- 수강 신청 가능 과목 정보 -->
                    <div class="table-responsive text-nowrap">
                        <table class="table table-bordered">
                            <thead>
                            <colgroup>
                                <col style="width: 17%;">
                                <col style="width: 17%;">
                                <col style="width: 16%;">
                                <col style="width: 16%;">
                                <col style="width: 17%;">
                                <col style="width: 17%;">
                            </colgroup>
                            <tr class="table-primary" style="text-align: center">
                                <th>학년</th>
                                <th>과목명</th>
                                <th>과목 번호</th>
                                <th>과목 구분</th>
                                <th>수업 유형</th>
                                <th>학점</th>
                                <th>수강 신청</th>
                            </tr>
                            </thead>
                            <form method="post">
                            <tbody>
                            <c:forEach var="sub" items="${listSubject}">
                            <tr style="text-align: center">
                                <td>${sub.sub_year}</td>
                                <td>${sub.sub_name}</td>
                                <td>${sub.sub_id}</td>
                                <td>${sub.sub_type}</td>
                                <td>강의유형 추가...</td>
                                <td>${sub.sub_grade}</td>
                                <td><button href="${pageContext.request.contextPath}/student/regSubject" type="submit" class="btn-sm btn-primary">신청</button></td>
                                <input type="hidden" name="sub_id" value="${sub.sub_id}">
                            </tr>
                            </c:forEach>
                            </tbody>
                            </form>
                        </table>
                    </div>

                </div>
            </div> <!--/ Bordered Table -->
        </div> <!-- / Content -->
    </div>
</div><%@ include file="bottom.jsp"%>