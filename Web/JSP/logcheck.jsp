<%@page contentType="text/html" pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<%  
    requset.setCharacterEncoding("euc-kr");
    String userid, userpwd;
    userid = getParameter("id");
    userpwd = getParameter("pwd");
%>
<br><br>
    <h1>Check Before Submit Your Information</h1><br><br>

<%
    out.print("Userid : " + userid + "<br>");
    out.print("Password : " + userpwd + "<br>");
%>