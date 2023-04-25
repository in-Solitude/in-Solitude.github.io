<%@ page import="java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: tsukisome
  Date: 2023/4/16
  Time: 13:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.example.jsplearn.student" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>排行榜</title>
</head>
<body>

<%
    int asd= (int) application.getAttribute("asd");
    System.out.print("asd");
    student thisstudent= (student) application.getAttribute("thisstudent");
    List<student> students = (List<student>) application.getAttribute("students");
    //students.add(thisstudent);
    for (student s:students){
        System.out.println("名字"+s.getName());
    }
    System.out.println(students.toString());
    if (students.size()>1) {
        System.out.println("大小"+ students.size());
        students.sort((o1, o2) -> Integer.compare(o2.getScore(), o1.getScore()));
    }
    else { System.out.println("大小"+ students.size());}
    int i=1;
%>
<table>
    <tr>
        <th>排名</th>
        <th>学号</th>
        <th>姓名</th>
        <th>分数</th>
    </tr>
    <% for (student s:students) { %>
    <tr>
        <td><%= i++ %></td>
        <td><%= s.getId() %></td>
        <td><%= s.getName() %></td>
        <td><%= s.getScore() %></td>
    </tr>
    <% } %>
</table>
</body>
</html>