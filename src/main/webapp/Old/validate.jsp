<%--
  Created by IntelliJ IDEA.
  User: SakuraKoujin
  Date: 2023/3/29
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name=request.getParameter("name");
    String pwd=request.getParameter("pwd");

    if("tom".equals(name)&&"jenny".equals(pwd)){
%>
<jsp:forward page="success.jsp"/>
<%
}
else {
%>
<jsp:forward page="Login.jsp"/>

<%
    }
%>

</body>
</html>
