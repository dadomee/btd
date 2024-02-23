<%--
  Created by IntelliJ IDEA.
  User: jaehee
  Date: 2024-02-03
  Time: 오후 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="top.jsp"%>

<!-- Content wrapper -->
<div class="content-wrapper">

    <!-- Content -->

    <div class="container-xxl flex-grow-1 container-p-y">


        <h4 class="py-3 mb-4">
            <span class="text-muted fw-light">KNOU computer science/</span> 학생 정보
        </h4>

        <div class="row">
            <div class="col-md-8">
                <div class="card mb-4">
                    <!-- Account -->
                    <div class="card-body">
                        <div class="d-flex align-items-start align-items-sm-center gap-4">
                            <img src="../bootstrap/student/assets/img/jaehee.jpg" alt="user-avatar" class="d-block rounded" height="100" width="100" id="uploadedAvatar" />
                            <div class="button-wrapper">
                                <label for="upload" class="btn btn-primary me-2 mb-4" tabindex="0">
                                    <span class="d-none d-sm-block">Upload new photo</span>
                                    <i class="bx bx-upload d-block d-sm-none"></i>
                                    <input type="file" id="upload" class="account-file-input" hidden accept="image/png, image/jpeg" />
                                </label>
                                <button type="button" class="btn btn-outline-secondary account-image-reset mb-4">
                                    <i class="bx bx-reset d-block d-sm-none"></i>
                                    <span class="d-none d-sm-block">Reset</span>
                                </button>

                                <p class="text-muted mb-0">Allowed JPG, GIF or PNG. Max size of 800K</p>
                            </div>
                        </div>
                    </div>
                    <hr class="my-0">
                    <div class="card-body">
                        <form id="formAccountSettings" method="POST" onsubmit="return false">
                            <div class="row">
                                <div class="mb-3 col-md-6">
                                    <label for="name" class="form-label">성명</label>
                                    <input class="form-control" type="text" id="name" name="firstName" value="${detailStudent.stu_name}" disabled/>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <%--@declare id="ename"--%><label for="ename" class="form-label">영문 성명</label>
                                    <input class="form-control" type="text" name="ename" id="lastName" value="${detailStudent.stu_ename}" disabled/>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="nationality" class="form-label">국적</label>
                                    <input type="text" class="form-control" id="nationality" name="organization" value="${detailStudent.stu_nationality}" disabled/>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="identity" class="form-label">주민등록번호</label>
                                    <input type="text" class="form-control" id="identity" name="organization" value="${detailStudent.stu_identity}" disabled/>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label for="email" class="form-label">E-mail</label>
                                    <input class="form-control" type="text" id="email" name="email" value="${detailStudent.stu_email}" disabled/>
                                </div>
                                <div class="mb-3 col-md-6">
                                    <label class="form-label" for="phoneNumber">전화번호</label>
                                    <div class="input-group input-group-merge">
                                        <span class="input-group-text">KOREA (+82)</span>
                                        <input type="text" id="phoneNumber" name="phoneNumber" class="form-control" value=" ${detailStudent.stu_tel}" disabled/>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="address" class="form-label">주소</label>
                                    <input type="text" class="form-control" id="address" name="address" value="${detailStudent.stu_addr}" disabled/>
                                </div>

                            </div>
                        </form>
                    </div>
                    <!-- /Account -->
                </div>
            </div>
        </div>


    </div>
    <!-- / Content -->
<%@ include file="bottom.jsp"%>
