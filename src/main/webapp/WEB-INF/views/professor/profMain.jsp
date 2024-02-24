<%--
  Created by IntelliJ IDEA.
  User: bc102
  Date: 2024-02-12
  Time: 오후 5:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <jsp:include page="profTop.jsp" flush="false">
        <jsp:param name="prof_id" value="${prof_id}"/>
        <jsp:param name="profSub" value="${profSub}"/>
    </jsp:include>
    <title>컴퓨터과학과 교수페이지</title>
</head>
<body>
<section id="why-us" class="why-us">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <c:forEach var="profInfo" items="${profInfo}">
                    <div class="box">
                        <h4>${profInfo.prof_name} 교수</h4>
                        <h4>${profInfo.depart_name}</h4>
                    </div>
                </c:forEach>
            </div>
            <c:forEach var="profSub" items="${profSub}">
            <div class="col-lg-3">
                    <div class="box">
                        <h4>${profSub.sub_name}</h4>
                    </div>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
<jsp:include page="profBottom.jsp" flush="false"/>
