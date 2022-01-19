function check_pw() {
    var pw = document.getElementById('NewPW').value;
    var SC = ["!", "@", "#", "$", "%"];
    var check_SC = 0;

    if (pw.length < 6 || pw.length > 16) {
        window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
        document.getElementById('NewPW').value = '';
    }
    for (var i = 0; i < SC.length; i++) {
        if (pw.indexOf(SC[i]) != -1) {
            check_SC = 1;
        }
    }
    if (check_SC == 0) {
        window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
        document.getElementById('NewPW').value = '';
    }
    if (document.getElementById('NewPW').value != '' && document.getElementById('CheckPW').value != '') {
        if (document.getElementById('NewPW').value == document.getElementById('CheckPW').value) {
            window.alert('비밀번호가 변경되었습니다.');
            location.href('MyDrive.html');
        } else {
            window.alert("비밀번호가 일치하지 않습니다.");
        }
    }
}