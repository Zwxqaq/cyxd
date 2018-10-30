package spdao;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class dao_sp {
//  private static final String DRIVER = "com.mysql.jdbc.Driver";
  private static final String URL = "jdbc:mysql://localhost:3306/shop?useUnicode=true&characterEncoding=UTF-8&useSSL=false&serverTimezone=UTC";
  private static final String USER = "root";
  private static final String PASSWORD = "Zwx7823478";
  private static Connection con = null;

  private static  void open_connect(){
    if (con == null) {
      String DRIVER = "com.mysql.jdbc.Driver";
      Connection conn = null;
      try{
        Class.forName(DRIVER);
        conn = DriverManager.getConnection(URL,USER,PASSWORD);
      } catch (ClassNotFoundException e) {
        e.printStackTrace();
      } catch (SQLException e) {
        e.printStackTrace();
      }
      con = conn;
    }
  }

  private static void close(ResultSet rs, PreparedStatement p,Connection c) {
    try {
      if (rs != null) {
        rs.close();
      }
      if (p != null) {
        p.close();
      }
      if(c != null) {
        c.close();
      }
    } catch (SQLException e) {
      e.printStackTrace();
    }
  }

  public static List query_sql_return_list(String sql) {
    List list = new ArrayList();
    ResultSet res = null;
    try {
      open_connect();
      Statement statement = con.createStatement();
      res = statement.executeQuery(sql);
      while (res.next()) {
        Map map = new HashMap();
        for (int i = 1; i <= res.getMetaData().getColumnCount(); i++) {
          String column = res.getMetaData().getColumnName(i);
          String val = res.getString(column);
          if (val == null) {
            val = "";
          }
          if (val == "null") {
            val = "";
          }
          map.put(column.toLowerCase(), val);
        }
        list.add(map);
      }
      res.close();
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
    }
    return list;
  }

  public static String executeUpdate(String sql) {
    System.out.println("执行sql语句:" + sql);
    String result = "True";
    ResultSet rs = null;
    PreparedStatement pstm = null;
    open_connect();
    try {
      con.setAutoCommit(false);
      pstm = con.prepareStatement(sql);
      pstm.executeUpdate();
      con.commit();
    } catch (SQLException e) {
      e.printStackTrace();
    } finally {
//      close(rs,pstm,con);
    }
    return result;
  }

  public static String insert_sql(String sql) {
    return executeUpdate(sql);
  }

  public static String update_sql(String sql) {
    return executeUpdate(sql);
  }

  public static String delete_sql(String sql) {
    return executeUpdate(sql);
  }

  public static void main(String[] args) {
    String sql = "";
    List list = null;
    sql = "delete from shopsp where spbh='004'";
    delete_sql(sql);
    dao_sp.getSql();
  }

  private static void updateSql() {
    String sql;
    sql = "insert into shopsp values('004','vivo21','3200')";
    dao_sp.insert_sql(sql);
  }

  private static void getSql() {
    String sql;
    List list;
    sql = "select * from shopsp";
    list = dao_sp.query_sql_return_list(sql);
    System.out.println(list);
  }
}
