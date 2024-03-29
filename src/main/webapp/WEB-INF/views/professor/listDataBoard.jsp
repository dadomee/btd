<%--
  Created by IntelliJ IDEA.
  User: bc102
  Date: 2024-02-17
  Time: 오후 4:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <jsp:include page="profManageTop.jsp" flush="false">
        <jsp:param name="prof_id" value="${prof_id}"/>
    </jsp:include>
    <title>자료실 목록</title>
</head>
<body>
<section id="services" class="services">
    <div class="container">
    <br>
        <div class="section-title">
            <h4>자료실</h4>
        </div>
        <div class="card">
            <div class="card-body">
                <a href="${pageContext.request.contextPath}/professor/writeDataBoard?prof_id=${prof_id}" class="btn btn-sm btn-outline-primary">글 등록</a>

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
<jsp:include page="profManageBottom.jsp" flush="false"/>

