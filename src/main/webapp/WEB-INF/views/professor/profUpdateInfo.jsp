<%--
  Created by IntelliJ IDEA.
  User: bc102
  Date: 2024-02-24
  Time: 오후 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <jsp:include page="profManageTop.jsp" flush="false">
        <jsp:param name="prof_id" value="${prof_id}"/>
    </jsp:include>
    <title>교수 개인정보 수정</title>
    <script type="text/javascript">
        function infoCheck() {
            if (f.prof_tel.value == "") {
                alert("전화번호를 입력해주세요!")
                f.prof_tel.focus()
                return false
            }
            if (f.prof_email.value == "") {
                alert("이메일을 입력해주세요")
                f.prof_email.focus()
                return false
            }
            return true
        }
    </script>
</head>
<body>
<form id="f" method="POST" action="${pageContext.request.contextPath}/professor/profUpdateInfo?prof_id=${prof_id}" enctype="multipart/form-data" onsubmit="return infoCheck()">
<div class="content-wrapper" style="position:relative; left:210px;">
    <!-- Content -->
    <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="py-3 mb-4">
            <span class="text-muted fw-light">KNOU Computer Science/</span> 교수 개인 정보 수정
        </h4>
        <div class="row">
            <div class="col-md-8">
                <div class="card mb-4">
                    <!-- Account -->
                    <c:forEach var="profInfo" items="${profInfo}">
                    <div class="card-body">
                        <div class="d-flex align-items-start align-items-sm-center gap-4">
                            <img src="../bootstrap/admin/images/faces/${profInfo.prof_img}" alt="user-avatar" class="d-block rounded" height="100" width="100" id="uploadedAvatar" />
                            <div class="button-wrapper">
                                <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                                    <span class="d-none d-sm-block">Upload new photo</span>
                                    <i class="bx bx-upload d-block d-sm-none"></i>
                                    <input type="file" id="upload" class="account-file-input" hidden accept="image/png, image/jpeg" />
                                </label>
<%--                                <button type="reset" class="btn btn-outline-secondary account-image-reset mb-4">--%>
<%--                                    <i class="bx bx-reset d-block d-sm-none"></i>--%>
<%--                                    <span class="d-none d-sm-block">Reset</span>--%>
<%--                                </button>--%>
                                <p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max size of 800K</p>
                            </div>
                        </div>
                    </div>
                    <hr class="my-0">
                    <div class="card-body">
                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <label for="name" class="form-label">성명</label>
                                    <input class="form-control" type="text" id="name" name="name" value="${profInfo.prof_name}" disabled/>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="education" class="form-label">학력</label>
                                    <input class="form-control" type="text" id="education" name="education" value="${profInfo.prof_education}" disabled/>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label class="form-label" for="prof_tel">전화번호</label>
                                    <div class="input-group input-group-merge">
                                        <span class="input-group-text">KOREA (+82)</span>
                                        <input class="form-control" type="text" id="prof_tel" name="prof_tel" value=" ${profInfo.prof_tel}"/>
                                    </div>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="prof_email" class="form-label">E-mail</label>
                                    <input class="form-control" type="text" id="prof_email" name="prof_email" value="${profInfo.prof_email}"/>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="department" class="form-label">담당전공</label>
                                    <input class="form-control" type="text" id="department" name="department" value="${profInfo.depart_name}" disabled/>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="subject" class="form-label">담당과목</label>
                                    <input class="form-control" type="text" id="subject" name="subject" value="${profInfo.sub_name}" disabled/>
                                </div>
                                <div class="mb-3">
                                    <label for="career" class="form-label">경력</label>
                                    <input type="text" class="form-control" id="career" name="career" value="${profInfo.prof_career}" disabled/>
                                </div>
                                <div class="mb-3">
                                    <label for="address" class="form-label">연구실 주소</label>
                                    <input type="text" class="form-control" id="address" name="address" value="" disabled/>
                                </div>
                                <div class="mb-12">
                                    <button type="submit" class="btn btn-primary me-2 mb-4">
                                        <i class="bx bx-reset d-block d-sm-none"></i>
                                        <span class="d-none d-sm-block">수정</span>
                                    </button>
                                    <button type="button" class="btn btn-outline-secondary account-image-reset mb-4" onclick="window.location='${pageContext.request.contextPath}/professor/professorManagement?prof_id=${prof_id}'">
                                        <i class="bx bx-reset d-block d-sm-none"></i>
                                        <span class="d-none d-sm-block">취소</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- /Account -->
                </div>
            </div>
        </div>
    </div>
</div>
</form>
<!-- / Content -->
</body>
</html>
<jsp:include page="profManageBottom.jsp" flush="false"/>
