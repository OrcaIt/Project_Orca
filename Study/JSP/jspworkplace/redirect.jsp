<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
    Date now = new Date();
    SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
    String date = df.format(now);

    if (date.endsWith("1")){
        response.sendRedirect("underCheck.jsp");
        return ;
    }

        String uid = request.getParameter("userid");
        String res = "<h3>사용자 아이디 : " + uid + "</h3>";
        res += "<br>로그인 시간 : " + now.toString();
        out.print(res);
%>