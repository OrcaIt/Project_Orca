<%@ page contentType="text/html; charset=utf-8" pageEncoding="EUC-KR" %>
<%
    Cookie user = new Cookie("uId","");
    session.invalidate();
    response.sendRedirect("main.html");
%>