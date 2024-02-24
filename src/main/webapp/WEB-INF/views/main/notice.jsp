<%--
  Created by IntelliJ IDEA.
  User: bc102
  Date: 2024-02-17
  Time: 오후 8:25
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
<br><br><br><br><br><br>
<body>
<section id="services" class="services">
    <div class="container">
        <div class="card" style="width:1000px; position:relative; left:150px;">
            <div class="card-body">
                <div class="row row-cols-1">
                    <div class="col">
                        <p class="fs-5" align="center">공지사항</p>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table" style="height: 700px;">
                        <tbody>
                        <tr align="center">
                            <th>제목</th>
                            <td>
                                <input type="text" name="notice_title" class="form-control" value="[${notice.notice_type}]&nbsp;${notice.notice_title}" disabled>
                            </td>
                        </tr>
                        <tr align="center">
                            <th></th>
                            <td>
                                <input type="text" style="text-align: right;" name="notice_title" class="form-control" value="조회수 : ${notice.notice_view} &nbsp; 등록일 : <fmt:formatDate pattern="yyyy-MM-dd" value="${notice.notice_regdate}"/>" disabled>
<%--                                조회수 : ${notice.notice_view} &nbsp;--%>
<%--                                등록일 : <fmt:formatDate pattern="yyyy-MM-dd" value="${notice.notice_regdate}"/>--%>
                            </td>
                        </tr>
                        <tr align="center">
                            <th scope="col">파일</th>
                            <td>
                            </td>
                        </tr>
                        <tr align="center">
                            <th>내용</th>
                            <td>
                                <textarea name="notice_content" class="form-control" rows="15" cols="50" disabled>${notice.notice_content}</textarea>
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="2">
                                <button type="button" class="btn btn-outline-secondary" onclick="window.location='${pageContext.request.contextPath}/main/noticeList'">목록으로</button>
                            </td>
                        </tr>
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
