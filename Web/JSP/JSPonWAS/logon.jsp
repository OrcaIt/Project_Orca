<%@ page contentType="text/html; charset=utf-8" pageEncoding="EUC-KR" %>
<%@ page import="java.sql.*" %>
<%
    request.setCharacterEncoding("UTF-8");
    String userid = request.getParameter("uid");
    String pwd = request.getParameter("upwd");

    Class.forName("com.mysql.jdbc.Driver");
    String dburl = "jdbc:mysql://192.168.0.20/test";
    String dbuser = "root";
    String dbpassword = "Orca2021!";
    Connection conn = DriverManager.getConnection(dburl, dbuser, dbpassword);
    Statement stmt = conn.createStatement();
    String sql = "SELECT * FROM user WHERE uId = '" + userid + "';";
    ResultSet rs = stmt.executeQuery(sql);

    if(rs.next()){
        String gid = rs.getString("uId");
        String gpwd = rs.getString("uPwd");
        if(pwd.equals(gpwd)){
%>
<form name="frm1" method="POST" action="http://192.168.0.21/main2.php">
<input type="hidden" name="userid" value="<%=gid%>">
</form>
<script>
document.frm1.submit();
</script>
<%
        }
        else{
%>
<script>
alert("wrong password");
history.back();
</script>
<%
        }
    }
    else{
%>
<script>
alert("No such Information");
history.back();
</script>

<%
    }
    conn.close(); rs.close(); stmt.close();
%>