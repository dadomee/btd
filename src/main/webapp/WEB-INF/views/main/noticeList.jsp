<%--
  Created by IntelliJ IDEA.
  User: bc102
  Date: 2024-02-12
  Time: 오후 4:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <jsp:include page="../mainTop.jsp" flush="false"/>
    <title>공지사항</title>
</head>
<body>
<br><br><br>
<div class="search-field d-none d-md-block" style="position:relative; left:600px;">
    <form class="d-flex align-items-center h-50" role="search" action="${pageContext.request.contextPath}/findNotice" method="post">
        <div class="input-group" style="width:500px;">
            <div class="input-group-prepend bg-transparent">
                <i class="input-group-text border-0 mdi mdi-magnify"></i>
            </div>
            <input type="text" name="searchString" class="form-control bg-transparent border-0" placeholder="검색할 내용을 입력하세요.">
            <input class="btn btn-primary" type="submit" value="search">
        </div>
    </form>
</div>
<section id="services" class="services">
    <div class="container">

        <div class="section-title">
            <h2>공지사항</h2>
        </div>

        <div class="card">
            <div class="card-body">
                <h4 class="card-title"></h4>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr align="center">
                            <th>글번호</th>
<%--                            <th>공지타입</th>--%>
                            <th>제목</th>
                            <th>작성일</th>
                            <th>조회수</th>
                            <th>파일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="noticeList" items="${noticeList}">
                        <tr align="center">
                            <td>${noticeList.notice_id}</td>
<%--                            <td>[${noticeList.notice_type}]</td>--%>
                            <td>
                            <a href="../main/notice?notice_id=${noticeList.notice_id}" class="link-dark">
                                [${noticeList.notice_type}]&nbsp;${noticeList.notice_title}
                            </a>
                            </td>
                            <td><fmt:formatDate pattern="yyyy-MM-dd" value="${noticeList.notice_regdate}"/></td>
                            <td>${noticeList.notice_view}</td>
                            <td>
                                <c:if test="${noticeList.notice_file1 ne null}">
                                    <i class="ri-file-list-3-line" style="color: #47aeff;"></i>
                                </c:if>
                            </td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
<jsp:include page="../mainBottom.jsp" flush="false"/>
