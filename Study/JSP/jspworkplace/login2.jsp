
<%--
    <html>
    String uid = request.getParameter("userid");
    String res = "<h3>User ID : " + uid + "</h3>";
    out.print(res);
    out.print(uid + "<br>");
    out.write(uid);
--%>
<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import ="java.util.Date" %>
<%
    String uid = request.getParameter("userid");
    String res = "<h3>사용자 아이디 : " + uid + "</h3>";
    res += "<br>로그인 시간 : " + (new Date()).toString();
    out.print(res);
%>
