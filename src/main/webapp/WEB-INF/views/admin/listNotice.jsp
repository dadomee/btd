<%--
  Created by IntelliJ IDEA.
  User: dadomee
  Date: 2024-02-12
  Time: 오후 4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="top.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>공지사항 목록</title>
</head>
<body>
<div class="main-panel">
    <div class="content-wrapper">
        <div class="col-10 grid-margin stretch-card">
            <div class="card">
            <div class="card-body">
                <h4 class="card-title">공지사항 목록</h4>
                <div align="right"><a href="/admin/writeNotice"><button type="button" class="btn btn-outline-primary btn-fw btn-sm">글 작성</button></a></div>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr align="center">
                            <th class="col-1">글번호</th>
                            <th class="col-2">공지타입</th>
                            <th class="col-5">제목</th>
                            <th>작성일</th>
                            <th>조회수</th>
                            <th>파일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="noticeList" items="${noticeList}">
                            <tr align="center">
                                <td>${noticeList.notice_id}</td>
                                <td>[${noticeList.notice_type}]</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/admin/notice?notice_id=${noticeList.notice_id}" class="link-dark">
                                        [${noticeList.notice_type}]&nbsp;${noticeList.notice_title}
                                    </a>
                                </td>
                                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${noticeList.notice_regdate}"/></td>
                                <td>${noticeList.notice_view}</td>
                                <td>
                                    <c:if test="${noticeList.notice_file1 ne null}">
                                        <i class="mdi mdi-file-multiple"></i>
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <c:if test="${count>0}">
                        <c:if test="${startPage > pageBlock}">
                            <li class="page-item">
                                <a class="page-link" href="${pageContext.request.contextPath}/admin/listNotice?pageNum=${startPage-pageBlock}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                        </c:if>

                        <c:forEach var="i" begin="${startPage}" end="${endPage}">
                            <li class="page-item">
                                <a class="page-link" href="${pageContext.request.contextPath}/admin/listNotice?pageNum=${i}">${i}</a></li>
                        </c:forEach>

                        <c:if test="${endPage < pageCount}">
                            <li class="page-item">
                                <a class="page-link" href="${pageContext.request.contextPath}/admin/listNotice?pageNum=${startPage+pageBlock}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </c:if>
                    </c:if>
                </ul>
            </nav>
        </div>
        </div>
    </div>
</body>
</html>
<%@include file="bottom.jsp"%>