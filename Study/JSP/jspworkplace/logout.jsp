<%@page contentType="text/html" pageEncoding="utf-8" %>
<%
    String uid = (String) session.getAttribute("id");
    out.print("ID : " + uid +"로그아웃 되었습니다.<br>");
    session.invalidate();
    out.print("ID : " + uid +"로그아웃 되었습니다.");
%>