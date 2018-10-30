<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="spdao.dao_sp" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    String spbh = request.getParameter("spbh").toString();
    String spmc = request.getParameter("spmc").toString();
    String spjg = request.getParameter("spjg").toString();
    String sql = "update shopsp set spmc='"+spmc+"',spjg='"+spjg+"' where spbh='"+spbh+"'";
    String res = dao_sp.update_sql(sql);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    修改商品返回结果:<%=res%>
    <a href="index.jsp">返回列表</a>
</body>
</html>
