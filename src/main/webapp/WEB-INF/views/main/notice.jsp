<%--
  Created by IntelliJ IDEA.
  User: bc102
  Date: 2024-02-17
  Time: 오후 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <jsp:include page="../mainTop.jsp" flush="false"/>
    <title>공지사항</title>
</head>
<br><br><br><br><br><br>
<body>
    <h2>${notice.notice_title}</h2>
    <h2>${notice.notice_content}</h2>
</body>
</html>
<jsp:include page="../mainBottom.jsp" flush="false"/>
