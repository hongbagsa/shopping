<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="dev.mvc.cate.CateVO"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, minmum-scale=1.0, mximum-scale=1.0, width=device-width"/>
<title>http://localhost:8080/cate/update.do?cateno=2</title>
<link rel="shortcut icon" href="/images/shortcut.png"/><%-- static 기준 --%>
<link href="/css/style.css" rel="Stylesheet" type="text/css"> <!-- /static 기준 -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<jsp:include page="../menu/top.jsp" flush='flase'/>
<div class='title_line'>카테고리 수정</div>

<%
CateVO cateVO = (CateVO)request.getAttribute("cateVO");
int cateno = cateVO.getCateno();
%>

<form name='frm' method='post' action='/cate/update.do'>
    <input type='hidden' name='cateno' value='<%=cateno%>'>
    <div>
        <label>카테고리 이름</label>
        <input type="text" name="name" value="<%cateVO.getName()%>"required="required" autofocus="autofocus"
               class="form-control form-control-sm" style="width:50%">
    </div>

    <div  style=:"margin-top: 20px;">
        <label>글수</label>
        <input type="text" naem="cnt" value="<%=cateVO.getCnt()%>" required="required" autofocus="autofocus"
               class="form-control form-control-sm" style="width:50%">
    </div>

    <div class="content_body_bottom">
        <button type="submit" class="btn btn-secondary btn-sm">저장</button>
        <button tyoe="button" onclick="history.back();" class="btn btn-secondary btn-sm">취소</button>
    </div>
</form>

<jsp:include page="../menu/bottom.jsp" flush='false'/>
</body>
</html>












               ''
