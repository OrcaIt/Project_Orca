<<<<<<< HEAD
document.getElementById("okButton")
    .addEventListener("click", function() {
        document.getElementById("main1").hidden = true;
        document.getElementById("main2").hidden = false;
    }, false);
function checkValue(){
    var form = document.userInfo;
=======
function check_form() {
    var userId = document.getElementById('id');
    var Fname = document.getElementById('first_name');
    var Lname = document.getElementById('last_name');
    var passwd = document.login_form.pwd.value;
    var pwchk = document.login_form.chk_pwd.value;
    var email = document.getElementById('e-mail');
    var email_num = document.getElementById('Authen_number');

    if(Fname.value == "") {
        alert('성을 입력하시오.');
        Fname.focus();
        console.log("NULL F_NAME");
        return false;
    }
    else if(Lname.value == "") {
        alert('이름을 입력하시오.');
        Lname.focus();
        console.log("NULL LNAME");
        return false;
    }
    else if(userId.value == "") {
        alert('아이디를 입력하시오.');
        userId.focus();
        console.log("NULL ID");
        return false;
    }
    else if(passwd == "") {
        alert('비밀번호를 입력하세요');
        console.log("NULL PASSWORD");
        return false;
    }
    else if(passwd != pwchk) {
        alert('암호가 다릅니다. 다시 입력하세요.');
        console.log("CHECK FAIL");
        return false;
    }
    else if(email.value == "") {
        alert('이메일을 입력하시오.');
        email.focus();
        console.log("NULL E-MAIL");
        return false;
    }
    else if(email_num.value == "") {
        alert('이메일 인증번호를 입력하시오.');
        email_num.focus();
        console.log("NULL E-MAIL_NUM");
        return false;
    }
    else
    {
        alert("회원가입 성공");
        console.log("SUBMIT")
        return true;
    }
>>>>>>> 76c359c2243e74bfa4ac8ddc3c9ee36fbed1a7ea
}