<%--
  Created by IntelliJ IDEA.
  User: bc102
  Date: 2024-02-12
  Time: 오후 6:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <jsp:include page="profTop.jsp" flush="false"/>
    <title>교수 소개</title>
</head>
<body>
<c:forEach var="profInfo" items="${profInfo}">
    <section id="services" class="services">
        <div class="container">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table" style="height: 400px;">
                            <tbody>
                            <tr align="center">
                                <th scope="col" rowspan="6"><img src="../bootstrap/admin/images/faces/${profInfo.prof_img}" style="width: 100px; height: 100px;" alt="교수사진"><br><br>${profInfo.prof_name} 교수</th>
                                <th scope="col">이메일</th>
                                <td>${profInfo.prof_email}</td>
                                <th scope="col">연락처</th>
                                <td>${profInfo.prof_tel}</td>
                            </tr>
                            <tr align="center">
                                <th scope="col">연구실 주소</th>
                                <td colspan="3"></td>
                            </tr>
                            <tr align="center">
                                <th scope="col">학력</th>
                                <td colspan="3">${profInfo.prof_education}</td>
                            </tr>
                            <tr align="center">
                                <th scope="col">경력</th>
                                <td colspan="3">${profInfo.prof_career}</td>
                            </tr>
                            <tr align="center">
                                <th scope="col">담당전공</th>
                                <td colspan="3">${profInfo.depart_name}</td>
                            </tr>
                            <tr align="center">
                                <th scope="col">담당과목</th>
                                <td colspan="3">${profInfo.sub_name}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</c:forEach>
</body>
</html>
<jsp:include page="profBottom.jsp" flush="false"/>
