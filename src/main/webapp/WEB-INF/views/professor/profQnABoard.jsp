<%--
  Created by IntelliJ IDEA.
  User: bc102
  Date: 2024-03-01
  Time: 오후 6:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <jsp:include page="profTop.jsp" flush="false">
        <jsp:param name="prof_id" value="${prof_id}" />
    </jsp:include>
    <title>학습상담 게시판</title>
</head>
<body>
<section id="services" class="services">
    <div class="container">
        <div class="section-title">
            <h2>학습상담</h2>
        </div>
        <div class="card">
            <div class="card-body">
                <h4 class="card-title"></h4>
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                        <tr align="center">
                            <th>글번호</th>
                            <th>제목</th>
                            <th>작성일</th>
                            <th>조회수</th>
                            <th>파일</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr align="center">
                            <td>1</td>
                            <td>
                                <a href="" class="link-dark">
                                    2
                                </a>
                            </td>
                            <td>3</td>
                            <td>4</td>
                            <td>
                                <i class="ri-file-list-3-line" style="color: #47aeff;"></i>
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
<jsp:include page="profBottom.jsp" flush="false"/>
