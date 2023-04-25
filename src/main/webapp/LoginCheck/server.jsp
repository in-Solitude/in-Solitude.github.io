<%@ page import="static java.lang.Thread.sleep" %><%--
  Created by IntelliJ IDEA.
  User: SakuraKoujin
  Date: 2023/4/3
  Time: 20:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if(username.equals("zhangsan") && password.equals("123")) {
        out.println("登录成功！三秒后将进入loginSuccess页面");
%>
<meta http-equiv="refresh" content="3;url=LoginSuccess.jsp">
<%   }
    else {
        response.sendRedirect("login_1.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Success Page</title>
</head>
<body>
</body>
</html>