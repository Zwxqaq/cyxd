<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="spdao.dao_sp" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    String spbh = request.getParameter("spbh").toString();
    String spmc = request.getParameter("spmc").toString();
    String spjg = request.getParameter("spjg").toString();
    String sql = "insert into shopsp values('"+spbh+"','"+spmc+"','"+spjg+"')";
    String res = dao_sp.insert_sql(sql);
%>
<html>
<head>
    <title>商品信息--新增</title>
</head>
<body>
    新增商品返回结果:<%=res%>
    <a href="index.jsp">返回列表</a>
</body>
</html>
