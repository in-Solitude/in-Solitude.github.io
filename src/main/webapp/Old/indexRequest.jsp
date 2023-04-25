<%--
  Created by IntelliJ IDEA.
  User: SakuraKoujin
  Date: 2023/4/3
  Time: 15:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    out.println(request.getParameter("name")+"<br>");
    out.println(request.getParameter("pwd")+"<br>");
    out.println(request.getParameter("sex")+"<br>");
    out.println(request.getParameter("from")+"<br>");
    //out.println(request.getParameter("interest")+"<br>");
    String[] selectedProducts = request.getParameterValues("interest");
    // 遍历选中的复选框数据，并根据其value属性值来区分数据
    for (String interest : selectedProducts) {
        out.println(interest+" ");
    }
    out.println("<br>");
    // 将选中的复选框数据存储到Session中

    out.println(request.getParameter("introduction")+"<br>");

%>

</body>
</html>
