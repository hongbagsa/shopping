<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dev.mvc.cate.CateVO"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta chartset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, minmum-scale=1.0, maximum-scale=10.0, width=device-width"/>
<title>http://localhost:8080/cate/read.do?cateno=1</title>
<link rel="shortcut icon" href="/images/shortcut.png"/> <%-- /static 기준 --%>
<link href="/css/style.css" rel="Stylesheet" type="text/css"> <%-- /static 기준 --%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<jsp:include page="../menu/top.jsp" flush='false'/>
<div class='title_line'>카테고리 조회</div>
    <%
    CateVO cateVO = (CateVO)request.getAttribute("cateVO");
    %>
    <div class="container mt-3">
        <ul class="list-group list-group-flush">
            <li class="list-group-item">번호: <%=cateVO.getCateno()%></li>
            <li class="list-group-item">이름: <%=cateVO.getName()%></li>
            <li class="list-group-item">등록 글수: <%=cateVO.getCnt()%></li>
            <li class="list-group-item">등록일: <%=cateVO.getRdate()%></li>
        </ul>
    </div>

<jsp:include page="../menu/bottom.jsp" flush='false'/>
</body>
</html>

