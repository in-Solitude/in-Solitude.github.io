<%--
  Created by IntelliJ IDEA.
  User: SakuraKoujin
  Date: 2023/3/30
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>

</head>
<body>

这里是调料柜台，欢迎选择调料
<form method="post" action="count.jsp">
    <label>
        <input type="checkbox" name="products" value="调和油">
        调和油
    </label><br>
    <label>
        <input type="checkbox" name="products" value="强化盐">
        强化盐
    </label><br>
    <label>
        <input type="checkbox" name="products" value="多维醋">
        多维醋
    </label><br>
    <label>
        <input type="checkbox" name="products" value="绿色调料">
        绿色调料
    </label><br>
    <br>
    <input type="submit" value="购物">
</form>
</body>
</html>
