<%--
  Created by IntelliJ IDEA.
  User: SakuraKoujin
  Date: 2023/3/30
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    String cardID="";
%>
<%
    if(session.getAttribute("cardID")!=null) {
        cardID = session.getAttribute("cardID").toString();
    }
%>
<form action="shop.jsp" method="post">
    请输入您的会员号：<br>
    <label>
        <input type="text" name="card" id="card" value=${sessionScope.cardID}>
    </label>
    <input type="submit">
</form>
</body>
</html>
