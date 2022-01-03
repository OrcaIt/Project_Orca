<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
	<title>ȸ������ ȭ��</title>

	<style type="text/css">
		table{
			margin-left:auto; 
			margin-right:auto;
			border:3px solid skyblue;
		}
		
		td{
			border:1px solid skyblue
		}
		
		#title{
			background-color:skyblue
		}
	</style>

	<script type="text/javascript">
	
		// ȸ������ ȭ���� �Է°����� �˻��Ѵ�.
		function checkValue()
		{
			var form = document.userInfo;
		
			if(!form.id.value){
				alert("���̵� �Է��ϼ���.");
				return false;
			}
			
			if(form.idDuplication.value != "idCheck"){
				alert("���̵� �ߺ�üũ�� ���ּ���.");
				return false;
			}
			
			if(!form.password.value){
				alert("��й�ȣ�� �Է��ϼ���.");
				return false;
			}
			
			// ��й�ȣ�� ��й�ȣ Ȯ�ο� �Էµ� ���� �������� Ȯ��
			if(form.password.value != form.passwordcheck.value ){
				alert("��й�ȣ�� �����ϰ� �Է��ϼ���.");
				return false;
			}	
			
			if(!form.name.value){
				alert("�̸��� �Է��ϼ���.");
				return false;
			}
			
			if(!form.birthyy.value){
				alert("�⵵�� �Է��ϼ���.");
				return false;
			}
			
			if(isNaN(form.birthyy.value)){
				alert("�⵵�� ���ڸ� �Է°����մϴ�.");
				return false;
			}
			
			if(form.birthmm.value == "00"){
				alert("���� �����ϼ���.");
				return false;
			}
			
			if(!form.birthdd.value){
				alert("��¥�� �Է��ϼ���.");
				return false;
			}
			
			if(isNaN(form.birthdd.value)){
				alert("��¥�� ���ڸ� �Է°����մϴ�.");
				return false;
			}
			
			if(!form.mail1.value){
				alert("���� �ּҸ� �Է��ϼ���.");
				return false;
			}
			
			if(!form.phone.value){
				alert("��ȭ��ȣ�� �Է��ϼ���.");
				return false;
			}
			
			if(isNaN(form.phone.value)){
				alert("��ȭ��ȣ�� - ������ ���ڸ� �Է����ּ���.");
				return false;
			}
			
			if(!form.address.value){
				alert("�ּҸ� �Է��ϼ���.");
				return false;
			}
		}
		
		// ��� ��ư Ŭ���� ùȭ������ �̵�
		function goFirstForm() {
			location.href="MainForm.do";
		}	
		
		// ���̵� �ߺ�üũ ȭ��open
		function openIdChk(){
		
			window.name = "parentForm";
			window.open("IdCheckForm.jsp",
					"chkForm", "width=500, height=300, resizable = no, scrollbars = no");	
		}

		// ���̵� �Է�â�� �� �Է½� hidden�� idUncheck�� �����Ѵ�.
		// �̷��� �ϴ� ������ �ߺ�üũ �� �ٽ� ���̵� â�� ���ο� ���̵� �Է����� ��
		// �ٽ� �ߺ�üũ�� �ϵ��� �Ѵ�.
		function inputIdChk(){
			document.userInfo.idDuplication.value ="idUncheck";
		}
		
	</script>
	
</head>
<body>
		<br><br>
		<b><font size="6" color="gray">ȸ������</font></b>
		<br><br><br>
		
		
		<!-- �Է��� ���� �����ϱ� ���� form �±׸� ����Ѵ� -->
		<!-- ��(�Ķ����) ������ POST ���, ������ �������� JoinPro.jsp -->
		<form method="post" action="MemberJoinAction.do" 
				name="userInfo" onsubmit="return checkValue()">
			<table>
				<tr>
					<td id="title">���̵�</td>
					<td>
						<input type="text" name="id" maxlength="50" onkeydown="inputIdChk()">
						<input type="button" value="�ߺ�Ȯ��" onclick="openIdChk()">	
						<input type="hidden" name="idDuplication" value="idUncheck" >
					</td>
				</tr>
						
				<tr>
					<td id="title">��й�ȣ</td>
					<td>
						<input type="password" name="password" maxlength="50">
					</td>
				</tr>
				
				<tr>
					<td id="title">��й�ȣ Ȯ��</td>
					<td>
						<input type="password" name="passwordcheck" maxlength="50">
					</td>
				</tr>
					
				<tr>
					<td id="title">�̸�</td>
					<td>
						<input type="text" name="name" maxlength="50">
					</td>
				</tr>
					
				<tr>
					<td id="title">����</td>
					<td>
						<input type="radio" name="gender" value="��" checked>��
						<input type="radio" name="gender" value="��" >��
					</td>
				</tr>
					
				<tr>
					<td id="title">����</td>
					<td>
						<input type="text" name="birthyy" maxlength="4" placeholder="��(4��)" size="6">
						<select name="birthmm">
							<option value="00">��</option>
							<option value="01" >1</option>
							<option value="02" >2</option>
							<option value="03" >3</option>
							<option value="04" >4</option>
							<option value="05" >5</option>
							<option value="06" >6</option>
							<option value="07" >7</option>
							<option value="08" >8</option>
							<option value="09" >9</option>
							<option value="10" >10</option>
							<option value="11" >11</option>
							<option value="12" >12</option>
						</select>
						<input type="text" name="birthdd" maxlength="2" placeholder="��" size="4">
					</td>
				</tr>
					
				<tr>
					<td id="title">�̸���</td>
					<td>
						<input type="text" name="mail1" maxlength="50">@
						<select name="mail2">
							<option>naver.com</option>
							<option>daum.net</option>
							<option>gmail.com</option>
							<option>nate.com</option>						
						</select>
					</td>
				</tr>
					
				<tr>
					<td id="title">�޴���ȭ</td>
					<td>
						<input type="text" name="phone"/>
					</td>
				</tr>
				<tr>
					<td id="title">�ּ�</td>
					<td>
						<input type="text" size="50" name="address"/>
					</td>
				</tr>
			</table>
			<br>
			<input type="submit" value="����"/>  
			<input type="button" value="���" onclick="goFirstForm()">
		</form>

</body>
</html>