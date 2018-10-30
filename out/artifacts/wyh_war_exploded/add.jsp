<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/29
  Time: 1:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<html>
<head>
    <title>商品信息-新增</title>
</head>
<body>
    <form action="add_do.jsp" method="post">
        商品编号:<input id="spbh" name="spbh"><br>
        商品名称:<input id="spmc" name="spmc"><br>
        商品价格:<input id="spjg" name="spjg"><br>
        <button type="submit">提交</button>
    </form>
</body>
</html>
