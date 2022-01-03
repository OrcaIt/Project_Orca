<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%! String getDate(){
    return new Date().toString();
    }
%>
<%
    String uid = getParameter("userid");
    String res = "<h3> 사용자 ID : " + uid + "</h3>";
    res += "<br>" + getDate();
    out.print(res);
%>
