<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%
    String strcnt = (String) application.getAttribute("counter");
    int count = (strcnt == null) ? 0 : Integer.valueOf(strcnt);
    out.print("방문자 수 : " + count);
    application.setAttribute("counter", String.valueOf(++count));
%>