<%--
  Created by IntelliJ IDEA.
  User: SakuraKoujin
  Date: 2023/3/23
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
3行4列表格
<jsp:include page="first.jsp">
    <jsp:param name="hang" value="3"/>
    <jsp:param name="lie" value="4"/>
</jsp:include>
<br>
两个数为：64，48。公约数为：
<jsp:include page="second.jsp">
    <jsp:param name="a1" value="64"/>
    <jsp:param name="a2" value="48"/>
</jsp:include>
</body>
</html>
