<%--
  Created by IntelliJ IDEA.
  User: dadomee
  Date: 2024-02-09
  Time: 오후 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- message.jsp -->
<c:set var="msg" value="${msg}" />
<c:set var="url" value="${url}" />

<script type="text/javascript">
    alert("${msg}");
    location.href="${url}";
</script>

