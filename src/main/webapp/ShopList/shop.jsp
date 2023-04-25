<%--
  Created by IntelliJ IDEA.
  User: SakuraKoujin
  Date: 2023/3/30
  Time: 15:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String cardID = null;
    if (session.getAttribute("cardID")!=null) {
        cardID = session.getAttribute("cardID").toString();
    }
    else
%>
<%
    {
%>
<jsp:forward page="loginID.jsp"/>
<%
    }
%>
<a href="food.jsp" target="_self">点击前往调料柜台选择调料</a><br>
<a href="loginID.jsp" target="_self">欢迎修改会员卡号</a><br>
您的会员卡号为：<%=cardID%>

</body>
</html>
