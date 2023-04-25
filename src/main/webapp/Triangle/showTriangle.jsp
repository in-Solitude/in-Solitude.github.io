<%--
  Created by IntelliJ IDEA.
  User: SakuraKoujin
  Date: 2023/4/10
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.example.jsplearn.Triangle" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="tri1" class="com.example.jsplearn.Triangle"/>
<jsp:setProperty name="tri1" property="a" value="asd" />
<%
    int a= Integer.parseInt(request.getParameter("a"));
    int b= Integer.parseInt(request.getParameter("b"));
    int c= Integer.parseInt(request.getParameter("c"));

    Triangle triangle=new Triangle();
    triangle.setA(a);
    triangle.setC(c);
    triangle.setB(b);
    triangle.makeTriangle();
    out.println("三角形的三边是<br>"+"A:"+a+"<br>B:"+b+"<br>C:"+c);
    out.println("<br>能否构成三角形？"+triangle.get_is_tri());
    if (triangle.get_is_tri()) {
        out.println("<br>面积是：" + triangle.getArea());
    }
    else {
        out.println("<br>不能构成三角形");
    }
%>
</body>
</html>
