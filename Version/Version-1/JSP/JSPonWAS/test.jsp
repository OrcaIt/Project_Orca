<%@ page contentType="text/html; charset=utf-8" pageEncoding="EUC-KR" %>
<%
	String test1 = "Admin";
%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form name="frm1" action="http://192.168.0.21/main2.php" method="POST">
<input type="hidden" name="userid" value="admin">
<input type="submit" value="Go">
</form>
</body>
</html>