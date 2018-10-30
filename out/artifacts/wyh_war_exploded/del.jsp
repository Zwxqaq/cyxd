<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="spdao.dao_sp" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    String spbh = request.getParameter("spbh").toString();
    String sql = "delete from shopsp where spbh="+spbh;
    String res = dao_sp.delete_sql(sql);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    删除结果为:<%=res%>
    <a href="index.jsp">返回列表</a>
</body>
</html>
