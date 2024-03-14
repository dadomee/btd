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
<!DOCTYPE html>
<html lang="en">
<head>
    <title>공지사항 작성</title>
    <script src="../ckeditor/ckeditor.js"></script>
    <script>
        // 페이지 새로고침 시 컨펌 창 표시
        window.onbeforeunload = function() {
            return "이 페이지를 떠나시겠습니까?";
        };
    </script>
    <script>
        window.onload = function(){
            ck = CKEDITOR.replace("editor");
        };
    </script>

</head>
<div class="main-panel">
    <div class="content-wrapper">
        <div class="col-10 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <form name="f" action="write_board.do?mode=${mode}" method="post"
                          onsubmit="return check()" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="text" class="form-control" name="notice_title" placeholder="글 제목">
                    </div>
                    <div class="form-group">
                        <select class="form-control form-control-sm" name="notice_type">
                            <option>공지사항 타입을 선택하세요.</option>
                            <c:forEach var="nt" items="${notice}"><option value="${nt.notice_type}">${nt.notice_type}</option></c:forEach>
                        </select>
                    </div>
                    <div>
                     <textarea name="content" id="editor" name="notice_content"></textarea>
                     </div>
                    <br>
                                <div class="input-group col-xs-12">
                                    <input type="file"  name="filename" class="form-control file-upload-info" placeholder="파일을 첨부하세요"  multiple="multiple">
                                   </div>
                    <br>
                    </form>
                    <div align="center">
                    <button type="button" class="btn btn-outline-primary btn-icon-text">
                        <i class="mdi mdi-file-check btn-icon-prepend" type="submit"></i> Submit </button>
                    <button type="button" class="btn btn-outline-warning btn-icon-text" onclick="window.location='${pageContext.request.contextPath}/admingit /listNotice'">
                        <i class="mdi mdi-reload btn-icon-prepend"></i> back </button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
</div>
<div>
<%@include file="bottom.jsp"%>