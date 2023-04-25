<%--
  Created by IntelliJ IDEA.
  User: SakuraKoujin
  Date: 2023/3/23
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<%
    int a= Integer.parseInt(request.getParameter("hang"));
    int b= Integer.parseInt(request.getParameter("lie"));
    out.print("<table border = 1\">");
    for (int j=1;j<=a;j++){
        out.print("<tr>");
        for (int i=1;i<=b;i++){
            out.print("<td>" );
            out.print( "1");
            out.print("</td>");
        }
        out.print("</tr>");
    }
    out.print("</table>");

%>
</body>
</html>
