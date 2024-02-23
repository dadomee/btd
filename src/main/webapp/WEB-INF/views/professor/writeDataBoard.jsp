<%--
  Created by IntelliJ IDEA.
  User: bc102
  Date: 2024-02-17
  Time: 오후 3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="professorManageTop.jsp" flush="false"/>
    <title>자료실 등록</title>
    <script type="text/javascript">
        function check() {
            if (f.data_title.value == "") {
                alert("제목을 입력해주세요!")
                f.data_title_title.focus()
                return false
            }
            if (f.data_content.value == "") {
                alert("내용을 입력해주세요")
                f.data_content_content.focus()
                return false
            }
            return true
        }
    </script>
</head>
<body>
<br>
<form name="f" action="${pageContext.request.contextPath}/professor/writeDataBoard" method="post" onsubmit="return check()">
<section id="services" class="services">
    <div class="container">
        <div class="card" style="width:1000px; position:relative; left:150px;">
            <div class="card-body">
                <div class="row row-cols-1">
                    <div class="col">
                        <p class="fs-5" align="center">자료실 등록</p>
                    </div>
                </div>
                <div class="table-responsive">
                    <table class="table" style="height: 700px;">
                        <tbody>
                        <tr align="center">
                            <th>제목</th>
                            <td><input type="text" name="data_title" class="form-control"></td>
                        </tr>
                        <tr align="center">
                            <th>내용</th>
                            <td><textarea name="data_content" class="form-control" rows="15" cols="50"></textarea></td>
                        </tr>
                        <tr align="center">
                            <th scope="col">파일</th>
                            <td>
<%--                                <input type="file" id="btnAtt" multiple="multiple" class="mt-2 small" style="margin-left: 20px;" accept=".png, .jpg, .jpeg" enctype="multipart/form-data"/>--%>

                            <%--                                <div class="container">--%>
<%--                                    <div class="row mb-3">--%>
<%--                                        <div class="col" align="left">--%>
<%--                                            <div class="collapse" id="image-collapse">--%>
<%--                                                <div id="image_preview">--%>
<%--                                                    <label class="input-file-button" for="btnAtt" style="margin-left: 2rem;">파일 선택</label>--%>
<%--                                                    <input type="file" id="btnAtt" multiple="multiple" class="mt-2 small" style="margin-left: 20px;" accept=".png, .jpg, .jpeg" enctype="multipart/form-data"/>--%>
<%--                                                    <div id="attZone" class="row small mt-2" style="margin-left: 20px;" data-placeholder="파일을 첨부 하려면 파일 선택 버튼을 클릭하세요"></div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="2">
                                <button type="submit" class="btn btn-secondary btn-sm">등록</button>
                                <button type="reset" class="btn btn-secondary btn-sm">다시 입력</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
</form>
</body>
</html>
<jsp:include page="professorManageBottom.jsp" flush="false"/>
