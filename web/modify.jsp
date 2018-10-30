<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<html>
<head>
    <title>修改</title>
</head>
<body>
<form action="modify_do.jsp" method="post">
    商品编号:<input id="spbh" name="spbh"><br>
    商品名称:<input id="spmc" name="spmc"><br>
    商品价格:<input id="spjg" name="spjg"><br>
    <button type="submit">提交</button>
</form>
</body>
</html>
