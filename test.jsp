<%@ page import = "java.net.InetAddress" %>
<%@ page import = "java.sql.*" %>
<html>
  <head>
    <title>Hello from JSP</title>
    <%!
      String message = "Hello World. From JSP test page Tomcat is running.";
      %>
    <%
      InetAddress inet= InetAddress.getLocalHost();
      %>
  </head>
  <body>
    <hr color="#000000" />
    <center>
    <h2><font color="#3366cc"><%= message%></font></h2>
    <h3><font color="#0000ff"><%= new java.util.Date()%></font></h3>
    <hr color="#000000" />
    <h3><%=application.getServerInfo()%></h3>
    <h3>Host Name : <%=inet.getHostName() %></h3>
    <h3>Host Address : <%=inet.getHostAddress() %></h3>
    <h3>Client IP : <%=request.getRemoteAddr()%></h3>
    <h3>Client IP(X-FORWARDED-FOR) : <%=request.getHeader("x-forwarded-for")%></h3>
    <hr color="#000000" />
    <h3>ALL HTTP HEADERS</h3>
    <font><% java.util.Enumeration names = request.getHeaderNames();
      while(names.hasMoreElements()){
          String name = (String) names.nextElement();
          out.println(name + ":<BR>" + request.getHeader(name) + "<BR><BR>");
      }%>
    </font>
    <hr color="#000000" />
    <h3>MYSQL CONNECTION TEST</h3>
    <font>
    <%
      Connection conn = null;
      try{
        String url = "jdbc:mysql://localhost:3306/jdbcTest";
        String id = "testid"; // 사용자계정
        String pw = "testpw"; // 사용자계정 패스워드
        
        Class.forName("com.mysql.jdbc.Driver");
        conn=DriverManager.getConnection(url,id,pw);
        
        out.println("DB Connected");
      
      } catch(Exception e) {
        out.println(e.toString());
      }
      %>
    </font>
  </body>
</html>