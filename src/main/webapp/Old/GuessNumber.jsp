<%--
  Created by IntelliJ IDEA.\
  Date: 2023/4/3
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<button type="button" name="button" value="aaa" onclick="this.value=<%=123%>" >
    <%
        out.println("GUI");
    %>

</button>
</body>
</html>
