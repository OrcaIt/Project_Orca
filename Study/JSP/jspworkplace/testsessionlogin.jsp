<!DOCTYPE html>
<html>
    <head>
        <title>Login Test</title>
        <meta charset = "UTF-8">
    </head>
<body>
<br><br><br>
<center><h2> Login Page </h2></center><br>
<center>
    <form name="fr1" action="testlogin.jsp">
        <table>
            <tr>
                <td>
                    USER ID</td>
                <td>
                    <input type="text" name="userid">
                </td>
            </tr>
            <tr>
                <td>
                    Password
                <td>
                    <input type="password" name="password">
        </table></center><br><br>
        <center>
            <input type="submit" value="Log In">
            &nbsp;&nbsp;
            <input type="reset" value="Cancel">
            <br>
            if you don't have account, 
            <a href="register.jsp">click<a> here to Register a Account
        </center>
    </form>
</body>
</html>