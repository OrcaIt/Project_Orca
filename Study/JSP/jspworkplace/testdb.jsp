<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(
        "jdbc:mysql://121.168.132.244:3306/test", "root", "kit2021" );
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM um");

    String str = "";
    while(rs.next()){
        str += rs.getString("mem_id") +", " + rs.getString("mem_name") + ", " +rs.getString("mem_pwd") +"<br>";
    }
    out.print(str);
    rs.close(); stmt.close(); conn.close();
%>