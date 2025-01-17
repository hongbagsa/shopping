<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dev.mvc.cate.CateVO"%>

<!DOCTYPE html>
<html lang='ko'>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, minimum-scale=1.0, maximum-scale=10.0, width=device-width" />
<title>http://localhost:8080/cate/list_all.do</title>
<link rel="shortcut icon" href="/images/star.png"/> <%-- /static 기준 --%>
<link href="/css/style.css" rel="Stylesheet" type="text/css"> <%-- /static 기준 --%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<jsp:include page="../menu/top.jsp" flush='false'/>
<div class='title_line'>카테고리</div>
<table class="table table-hover">
    <colgroup>
        <col style='width: 10%;'/>
        <col style='width: 40%;'/>
        <col style='width: 10%;'/>
        <col style='width; 20%;'/>
        <col style='width; 20%;'/>
    </colgroup>
    <thead>
        <tr>
            <th class="th_bs">순서</th>
            <th class="th_bs">카테고리 이름</th>
            <th class="th_bs">자료수</th>
            <th class="th_bs">등록일</th>
            <th class="th_bs">기타</th>
        </tr>
    </thead>
    <tbody>
    <%
    ArryList<CateVO> list = (ArrayList<CasteVO>)request.getAttribute("list");
    for (int i=0; i < list.size(); i++){
        CateVO cateVO = list.get(i);
        int cateno - cateVO.getCateno();
    %>
        <tr>
            <td class="td_bs"><%=i=1%></td>
            <td><a href="./read.do?cateno=<%=cateno%>" style="display: block;"><%= cateVO.getName()%></a></td>
            <td class="td_bs"><%=cateVO.getCnt%></td>
            <td class="td_bs"><%=cateVO.getRdate().substring(0,10)%></td>
            <td class="td_bs">
                <img src="/cate/images/show.png" class="icon">
                <img src="/cate/images/decrease.png" class="icon">
                <img src="/cate/images/increase.png" class="icon">
                <a href="./update.do?cateno=<%=cateno %>"><img src="/cate/images/update.png" class="icon"></a>
                <a href="./delete.do?cateno=<%=cateno %>"><img src="/cate/images/delete.png" class="icon"></a>
            </td>
        </tr>
    <%
    }
    %>
    </tbody>

</table>

<jsp:include page="../menu/bottom.jsp" flush='false'/>
</body>
</html>