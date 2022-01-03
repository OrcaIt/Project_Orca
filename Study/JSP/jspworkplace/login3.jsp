<%@ page ContentType="text/html" pageEncoding="utf-8"%>
<%
    String uid = request.getParameter("userid");
    String res = "<br><h3>사용자 ID : " + uid;
    out.print(res);
%>
<%@ include file="TimeNow.jsp"%>