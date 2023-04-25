<%--
  Created by IntelliJ IDEA.
  User: tsukisome
  Date: 2023/4/15
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
</head>
<body>
<form action="../login" method="post">
    <p>学号: <input type="text" name="studentID"></p>
    <p>姓名: <input type="text" name="studentName"></p>
    <p>密码: <input type="password" name="password"></p>
    <p><input type="submit" value="登录"></p>
</form>
</body>
</html>
