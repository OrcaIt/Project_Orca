<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@page import="java/sql/*" %>
<%
    request.setCharacterEncoding("utf-8"):
    String mem_id = request.getParameter("userid");
    String mem_pwd = request.getParameter("pwd");
    String mem_name = request.getParameter("uname");

    String sql = "INSERT INTO um(mem_id, mem_pwd, mem_name) VALUES";
    sql += "('" + mem_id + "', '" + mem_pwd + "', '" + mem_name + "')";
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(
        "jdbc:mysql://192.168.0.4:3306/test", "root", "Orca2021@");
    Statement stmt = conn.createStatement();

    int count = stmt.execute(sql);
    if(count == 1){
        out.print("회원가입 완료");
    }
    else {
        out.print("회원가입 중 오류 발생");
    }
    stmt.close(); conn.close();
%>