<%@ page contentType="text/html;charset=UTF-8" language= "java" %>
<html>
<head>
    <title>Leave a Message</title>
</head>
<body>
<form action="getMessage.jsp" method="post">
    <p> <label>用户名:

        <input type="text" name="username" required="required">
    </label></p>
    <p><label>标题:
        <input type="text" name="title"required="required">
    </label></p>
    <p><label>
        内容:
        <textarea name="content" required="required"></textarea>
    </label></p>
    <input type="submit" value="提交">
    <label>
        <input type="reset" >
    </label>

</form>
<input type="button" onclick="window.location.href = 'viewMessage.jsp'" value="查看留言">
</body>
</html>