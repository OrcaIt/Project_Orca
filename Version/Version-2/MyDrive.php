<?php
session_start();
$getid;
$skey;
        if($_SESSION['ssid'] == null)
        {
                $getid = $_POST['userid'];
                $_SESSION['ssid'] = $getid;
                $skey = $_SESSION['ssid'];
        }
        if($skey == null)
        {
?>
                <script>
                alert("Wrong Access");
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
    <link rel="stylesheet" href="css/MyDrive.css">
    <script src="js/Upload.js"></script>
    <script src="https://kit.fontawesome.com/384a503f7d.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@600&display=swap" rel="stylesheet">
    <title>Orca Cloud Drive</title>

</head>

<body>
    <header>
        <a href="index.html">Orca Cloud</a>
        <div id="user">
            <i class="fas fa-user"></i><a href="UserInfo.html">user #01022130</a>
        </div>
    </header>
    <main>
        <aside>
            <form class="filebox" name="upload">
                <label for="ex_file"><i class="fas fa-file-upload"></i>File Upload</label>
                <input type="file" id="ex_file" onchange="File_Upload(this);">
            </form>
            <div id="btn">
                <button><i class="fab fa-google-drive"></i>My Drive</button>
                <button><i class="fas fa-share-alt-square"></i> Share Folder</button>
                <button><i class="fas fa-bookmark"></i>Important Folder </button>
                <button><i class="fas fa-trash-alt"></i>Trash</button>
            </div>
            <div id="stroge">
                <span>Storage Capacity</span>
                <p><i class="fas fa-cloud"></i>0GB out of 15GB</p>
            </div>
        </aside>
        <section>
            <div id="search">
                <input type="search" placeholder="Search">
                <button><i class="fas fa-search"></i></button>

            </div>
            <div id="folder">

            </div>
        </section>
        <article>

        </article>
    </main>
</body>
</html>
<?php
        }
?>
