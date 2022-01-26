<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@page import="java.sql.*" %>
<html>
<head>
</head>

<body>
<form name='frm1' method="post">
<%
    request.setCharacterEncoding("utf-8");
    String mem_id = request.getParameter("userid");
    String mem_pwd = request.getParameter("pwd");
    String mem_Gname = request.getParameter("uGname");
    String mem_email = request.getParameter("uEmail");
    String mem_Lname = request.getParameter("uLname");


    String sql = "INSERT INTO user(uId, uLname, uGname, uEmail, uPwd) VALUES";
    sql += "('" + mem_id + "', '" + mem_Lname + "', '" + mem_Gname + "', '";
    sql += mem_email + "', '" + mem_pwd + "')";
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(
        "jdbc:mysql://192.168.0.11:3306/test", "root", "Orca2021!");
    Statement stmt = conn.createStatement();

    int count = stmt.executeUpdate(sql);
    if(count == 1){
    %>
    <script>
    alert("Success Register");
    location.href="main.html";
    </script>
    <%
    }
    else {
    %>
    <script>
    alert("Failed");
    history.back();
    </script>
    <%
    }
    stmt.close(); conn.close();
%>
</form>
</body>
</html>