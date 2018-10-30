<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="spdao.dao_sp" %>
<%@ page import="java.util.HashMap" %>
<%
  String sql = "select * from shopsp";
  List list = dao_sp.query_sql_return_list(sql);
  String s = "";
  for (int i = 0; i < list.size(); i++) {
    HashMap map = (HashMap) list.get(i);
    String spbh = map.get("spbh").toString();
    String spmc = map.get("spmc").toString();
    String spjg = map.get("spjg").toString();
    s += "<tr>";
    s += "  <td>" + spbh + "</td>";
    s += "  <td>" + spmc + "</td>";
    s += "  <td>" + spjg + "</td>";
    s += "  <td><a href=\"javascript:alert('详情');\">详情</a>";
    s += "    <a href=\"javascript:alert('修改');location='modify.jsp';\">修改</a>";
    s += "    <a href=\"javascript:alert('删除');del('"+spbh+"');\">删除</a>";
    s += "  </td>";
    s += "</tr>";
  }
%>
<html>
  <head>
    <title>wyhshabi</title>
    <script>
      function del(spbh) {
          location="del.jsp?spbh="+spbh;
      }
    </script>
  </head>
  <body>
  wyh是傻逼
  <br>
  <button ondblclick="alert('新增');location='add.jsp';">新增</button>
  <table style="width: 800px; font-size: 12px; text-align: center; border: 1px">
    <tr>
      <td>商品编号</td>
      <td>商品名称</td>
      <td>商品价格</td>
      <td>操作</td>
    </tr>
    <%=s%>
    <tr>
      <td>001</td>
      <td>苹果手机</td>
      <td>6000</td>
      <td>
        <a href="javascript:alert('详情');">详情</a>
        <a href="javascript:alert('修改');">修改</a>
        <a href="javascript:alert('删除');">删除</a>
      </td>
    </tr>
    <tr>
      <td>002</td>
      <td>小米手机</td>
      <td>3200</td>
      <td>
        <a href="javascript:alert('详情');">详情</a>
        <a href="javascript:alert('修改');">修改</a>
        <a href="javascript:alert('删除');">删除</a>
      </td>
    </tr>
  </table>
  </body>
</html>
