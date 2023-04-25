<%--
  Created by IntelliJ IDEA.
  User: SakuraKoujin
  Date: 2023/3/30
  Time: 21:35
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
这里是结账柜台，请确认以下信息<br>
您的会员卡号：<%=cardID%><br>
购物车中的商品清单：<br>
<%
    // 获取选中的复选框数据
    if (request.getParameterValues("products")==null)
    {
%>
        <jsp:forward page="food.jsp"/>
<%
    }
    String[] selectedProducts = request.getParameterValues("products");
    // 遍历选中的复选框数据，并根据其value属性值来区分数据
    for (String product : selectedProducts) {
        out.println(product+"<br>");
    }
    // 将选中的复选框数据存储到Session中
    session.setAttribute("selectedProducts", selectedProducts);
%>
<a href="loginID.jsp" target="_self">欢迎修改会员卡号</a>
<a href="food.jsp" target="_self">欢迎来到调料柜台</a><br>
</body>
</html>
