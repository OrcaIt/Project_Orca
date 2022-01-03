<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration"%>
<%
    Enumeration<String> en = request.getHeaderNames();
    while(en.hasMoreElements()){
        String name= (String) en.nextElement();
        String value = request.getHeader(name);
        out.print(name + " : " + value + "<br>");
    }
%>