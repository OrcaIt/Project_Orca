<?php
        session_start();
        $_SESSION['ssid'];
        if($_SESSION['ssid'] == null){
?>
                <script>
                alert("Wrong Access!!");
                location.href="index.html";
                </script>
<?php
        }
        else{
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orca Cloud</title>
    <link rel="stylesheet" href="../css/ResetPW.css">
    <script type="text/javascript" async src="/js/checkPW.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">
</head>

<body>
    <div id=title>
        <a href="/index.html">Orca Cloud</a>
    </div>
    <form id="Reset_PW" method="post" action=# onsubmit="return check_pw();">
        <input type="password" placeholder="New Password" id="NewPW">
        <br>
        <input type="password" placeholder="Check Password" id="CheckPW">
        <input type="submit" value="Send" id="submit_btn">
    </form>
</body>

</html>
<?php
        }
?>
