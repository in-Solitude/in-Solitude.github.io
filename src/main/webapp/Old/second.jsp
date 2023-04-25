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
    <%
        String a1=request.getParameter("a1");
        String b1=request.getParameter("a2");
        int a=Integer.parseInt(a1);
        int b=Integer.parseInt(b1);
        System.out.println(a1+" "+b1);
        String s= String.valueOf(getGreatestCommonDivisor2(a,b));
        out.print(s);
    %>
    <%!
        public static int getGreatestCommonDivisor2(int a, int b) {


            int big = Math.max(a, b);
            int small = Math.min(a, b);
            System.out.println(big+" "+small);
            System.out.println(a+" "+b);
            if (big % small == 0) {
                return small;
            }
            return getGreatestCommonDivisor2(big % small, small);
        }
    %>
</head>
<body>

</body>
</html>
