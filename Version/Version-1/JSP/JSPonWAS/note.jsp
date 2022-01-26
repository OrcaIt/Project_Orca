<%@page contentType="text/html; charset=utf-8" pageEncoding="EUC-KR" %>
<%@page import="java.sql.*" %>
<%!
    int mNum;
    String dbId;
    String dpwd;
    %>
<%
    request.setCharacterEncoding("UTF-8");
    String uid = request.getParameter("uid");
    String upwd = request.getParameter("pwd");

    Class.forName("com.mysql.jdbc.Driver");
    String dburl = "jdbc:mysql://192.168.0.20:3306/test";
    String dbuser = "root";
    String dbpwd = "Orca2021!";
    Connection conn = DriverManager.getConnection(
        dburl, dbuser, dbpwd
    );   %><%--DB Connection--%><%
    Statement stmt = conn.createStatement();
    String sql = "SELECT mNum, uId, uPwd FROM user WHERE uId = '"+ uid+ "';";
    ResultSet rs = stmt.executeQuery(sql);
    if (rs.next())
    {
        mNum = rs.getInt("mNum");
        dbId = rs.getString("uId");
        dPwd = rs.getString("uPwd");
        if(upwd.equals(dPwd)){
            session.setAttribute("uId", dbId);
%>
<form name="frm1" method="POST">
<input type="hidden" name="uId" value="<%=dbId%>">
</form>
<script>
location.href="http://192.168.0.21/main2.php";
</script>
<%
        }
        else{
%>
<script>
alert("Wrong : password");
history.back();
</script>
<%
        }
    }
    else{
%>
<script>
alert("There is no information ID");
history.back();
</script>
<%
    }    
    rs.close(); stmt.close(); conn.close();
%>