<%@ page contentType="text/html" pageEncoding="utf-8"%>
<html>
<head>
<title>RegisterMemeber</title>
</head>
<body>
<form name="frm" action="regon.jsp" method="post">
<br><br><center><h1>Memeber Register</h1></centere>
<br><br>
<center>
<table>
    <tr>
        <td>
        ID
        <td>
        <input type="text" name="userid">
    <tr>
        <td>
        Password
        <td>
        <input type="password" name="pwd">
    <tr>
        <td>
        Given Name
        <td>
        <input type="text" name="uGname">
    <tr>
        <td>
        Last Name
        <td>
        <input type="text" name="uLname">
    <tr>
        <td>
        Email 
        <td>
        <input type="text" size='20' name="uEmail">

</table>
</center><br><br>
<center>
<input type="submit" value="Register">&nbsp;&nbsp;
<input type="reset" value="Cancel">
</center>
</form>
</body>
</html>