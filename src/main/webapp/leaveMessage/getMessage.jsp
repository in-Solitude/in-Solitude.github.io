<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ page import="com.example.jsplearn.Message" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 获取表单参数
    String username = request.getParameter("username");
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    Date time = new Date(); // 获取系统时间

    // 实例化Message类的JavaBean对象
    Message message = new Message();

    // 设置JavaBean对象的属性值
    message.setUsername(username);
    message.setTitle(title);
    message.setContent(content);
    message.setTime(time);

    // 将JavaBean对象存入Vector中
    Vector<Message> messages = (Vector<Message>) application.getAttribute("messages");
    if (messages == null) {
        messages = new Vector<>();
        application.setAttribute("messages", messages);
    }
    if(message.getUsername() != null && message.getContent() != null && message.getTitle() != null) {
        messages.add(message);
    }
%>
<html>
<head>
    <title>Get Message</title>
</head>
<body>
<h2>你的留言:</h2>
<p>用户名: <%= message.getUsername() %></p>
<p>标题: <%= message.getTitle() %></p>
<p>内容: <%= message.getContent() %></p>
<p>留言时间: <%= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(message.getTime()) %></p>
<p><a href="leaveMessage.jsp">去留言</a></p>
<p><a href="viewMessage.jsp">查看留言</a></p>
</body>
</html>
