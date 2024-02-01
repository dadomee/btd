<%--
  Created by IntelliJ IDEA.
  User: dasomjin
  Date: 1/19/24
  Time: 6:03 PM
  To change this template use File | Settings | File Templates.

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="top.jsp"%>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="card">
                <div class ="card-body">
                    <h4 class="card-title">나의 정보</h4>
                    <p class ="card-description">내 정보를 확인하세요.</p>
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>이름</th>
                            <th>주소</th>
                            <th>생년월일</th>
                            <th>전화번호</th>
                            <th>직함</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="myPage" items="${myPage}">
                        <tr>
                            <td>${myPage.staff_name}</td>
                             <td>${myPage.staff_birth}</td>
                            <td>${myPage.staff_address}</td>
                            <td>${myPage.staff_tel}</td>
                            <td><label class="badge badge-danger">${myPage.staff_status}</label></td>

                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
<%@include file="bottom.jsp"%>