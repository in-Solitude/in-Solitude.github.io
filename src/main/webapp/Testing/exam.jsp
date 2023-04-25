<%--
  Created by IntelliJ IDEA.
  User: tsukisome
  Date: 2023/4/16
  Time: 13:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>在线考试系统 - 考试页面</title>
</head>
<body>
<h1>在线考试系统 - 考试页面</h1>
<form action="submit.jsp" method="post" >

    <h2>单选题</h2>
    <p>1. 下列选项中，不属于计算机网络协议分层结构的是：</p>
    <label>
        <input type="radio" name="q1" value="A" required>
        A. 应用层
    </label>
    <label>
        <input type="radio" name="q1" value="B">
        B. 传输层
    </label>
    <label>
        <input type="radio" name="q1" value="C">
        C. 网络层
    </label>
    <label>
        <input type="radio" name="q1" value="D">
        D. 物理层
    </label>

    <p>2. 在Java中，哪个关键字用于定义类的继承关系：</p>
    <label>
        <input type="radio" name="q2" value="A" required>
        A. super
    </label>
    <label>
        <input type="radio" name="q2" value="B">
        B. extends
    </label>
    <label>
        <input type="radio" name="q2" value="C">
        C. implements
    </label>
    <label>
        <input type="radio" name="q2" value="D">
        D. this
    </label>

    <h2>多选题</h2>
    <p>3. 下列关于Java异常处理的描述中，哪些是正确的？（可多选）</p>
    <label>
        <input type="checkbox" name="q3" value="A" >
        A. 异常处理可以使用try-catch语句
    </label>
    <label>
        <input type="checkbox" name="q3" value="B" >
        B. 异常处理可以使用throw语句
    </label>
    <label>
        <input type="checkbox" name="q3" value="C" >
        C. 异常处理可以使用finally语句
    </label>
    <label>
        <input type="checkbox" name="q3" value="D" >
        D. 所有的异常都必须在代码中进行处理
    </label>

    <p>4. 下列关于HTML表单的描述中，哪些是正确的？（可多选）</p>
    <label>
        <input type="checkbox" name="q4" value="A" >
        A. HTML表单可以使用POST方法提交数据
    </label>
    <label>
        <input type="checkbox" name="q4" value="B" >
        B. HTML表单可以使用GET方法提交数据
    </label>
    <label>
        <input type="checkbox" name="q4" value="C">
        C. HTML表单可以包含多个提交按钮
    </label>
    <label>
        <input type="checkbox" name="q4" value="D" >
        D. HTML表单可以包含多个文本输入框
    </label>

    <h2>判断题</h2>
    <p>5. Java中的String是一个基本数据类型。</p>
    <label>
        <input type="radio" name="q5" value="T" required>
        T. 是
    </label>

    <label>
        <input type="radio" name="q5" value="F">
        F. 否
    </label>

    <h2>简答题</h2>
    <p>6. 请简要描述TCP协议的可靠性机制。</p>
    <textarea name="q6" rows="5" cols="50" required></textarea>

    <p>7. 请简要描述Java中的反射机制。</p>
    <textarea name="q7" rows="5" cols="50" required></textarea>

    <br>
    <input type="submit" value="提交">
</form>
</body>
</html>