<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%! 
    int mNum;
    String uId, uLname, uGname, uEmail, uPwd;
%>
<%  
    String sId = (String)session.getAttribute("uId");
    out.println(sId);
    if(sId == null)
    {
%>
<script>
alert("Wrong Access");
location.href="main.html";
</script>
<%
    }
    else{
        out.println(sId);
        out.println("<br>Welcome~");
    }
%>
<a href="logout.jsp">log out</a>
