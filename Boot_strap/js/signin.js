function check_form() 
{
    var name = document.getElementById('name');
    var passwd = document.login_form.pwd.value;
    var pwchk = document.login_form.chk_pwd.value;
    var email = document.getElementById('e-mail');
    var email_num = document.getElementById('Authen_number');

    if(name.value == "") {
        alert('닉네임을 입력하시오.');
        name.focus();
        console.log("NULL LNAME");
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
    else if(passwd == "") {
        alert('비밀번호를 입력하세요');
        console.log("NULL PASSWORD");
        return false;
    }
    else if(passwd.length<8)
    {
        alert('8자 이상의 비밀번호로 설정해주세요.');
        console.log("SHORT PASSWORD");
        return false;
    }
    else if(passwd != pwchk) {
        alert('암호가 다릅니다. 다시 입력하세요.');
        console.log("CHECK FAIL");
        return false;
    }  
    else
    {
        alert("회원가입 성공");
        console.log("SUBMIT")
        return true;
    }
}