23:18:29
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="com.example.jsplearn.Message" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 获取所有留言
    Vector messages = (Vector)application.getAttribute("messages");
    if (messages == null) {
        messages = new Vector();
    }
%>
<html>
<head>
    <title>View Messages</title>
</head>
<body>
<h2>全部留言</h2>
<table border="1">
    <tr>
        <th>用户名</th>
        <th>标题</th>
        <th>内容</th>
        <th>时间</th>
    </tr>
    <% for (Object o : messages) {
        Message message = (Message) o;
    %>
    <tr>
        <td><%= message.getUsername() %>
        </td>
        <td><%= message.getTitle() %>
        </td>
        <td><%= message.getContent() %>
        </td>
        <td><%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(message.getTime()) %>
        </td>
    </tr>
    <% } %>

</table>
<p><a href="leaveMessage.jsp">去提交留言</a></p>
</body>
</html>