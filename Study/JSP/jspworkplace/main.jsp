<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%
    String uid = (String) session.getAttribute("id");
    if(uid == null){
        out.print("로그인 정보가 없습니다.");
    }
    else{
        out.print("메인 페이지 입니다.");
        session.setAttribute("id", uid);
        out.print("<br>ID : "+uid);
    }
%>
<form name=frm1 action="logout.jsp"><br>
<input type="submit" value="Logout">