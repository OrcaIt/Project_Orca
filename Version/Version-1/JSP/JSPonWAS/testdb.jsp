<%@page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.security.MessageDigest" %>
<%! 
    public static class SHA256{
        public static String encoding(String str){
            String encodeString = "";
            try{
                MessageDigest md = MessageDigest.getInstance("SHA-256");
                md.update(str.getBytes());
                byte[] encodeData = md.digest();

                for(int i=0; i<encodeData.length; i++){
                    encodeString += Integer.toHexString(encodeData[i]&0xFF);
                }
            } catch (Exception e){
                e.printStackTrace();
            }
            return encodeString;
        }
    }
%>
<%
    request.setCharacterEncoding("UTF-8");
    String stmt = request.getParameter("stmt");
    String digest = SHA256.encoding(stmt);
    out.println("Plain Text : "+stmt+"<br>");
    out.println("Digest : "+digest);
%>
