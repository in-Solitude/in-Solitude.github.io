<%--
  Created by IntelliJ IDEA.
  User: SakuraKoujin
  Date: 2023/3/20
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int a=0;
    int b=0;
%>
<h1>
    asdsd
</h1>
<%
    out.print("<table border = 1\">");
    for (a=1;a<=10;a++){

        out.print("<tr>");
        for (b=1;b<=15;b++){
            out.print("<td>" );
            out.print( a * b );
            out.print("</td>");

        }
        out.print("</tr>");
    }
    out.print("</table>");

%>
</body>
</html>
