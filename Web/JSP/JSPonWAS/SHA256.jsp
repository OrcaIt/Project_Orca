<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.security.MessageDigest"%>
<%!
        public static class SHA256 {
                public static String encoding(String str) {
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

        String id = request.getParameter("id");
        String pwd = request.getParameter("pwd");
        String pw = SHA256.encoding(pwd);
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String email = request.getParameter("email");

        Class.forName("com.mysql.jdbc.Driver");

        Connection conn = null;
        String url = "jdbc:mysql://10.0.3.69:3306/test";
        String db_id = "root";
        String db_pw = "Orca2021!";
        conn=DriverManager.getConnection(url, db_id, db_pw);
        Statement stmt = conn.createStatement();

        String sql = "INSERT INTO info(id, password, first_name, last_name, email) VALUES";
        sql += "('"+id+"', '"+pw+"', '"+first_name+"', '"+last_name+"', '"+email+"')";
        int count = stmt.executeUpdate(sql);
        if(count == 1){
        out.print("회원가입 완료");
        }
        else{
        out.print("회원가입 실패");
        }
        stmt.close();
        conn.close();
%>
