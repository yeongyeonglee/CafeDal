<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data">
			<table id="tbl_info" class="table table-user">
				<tr id="tr_id">
					<th>���̵�</th>
					<td>
						${n.id}
					</td>
				</tr>
				
				<tr id="tr_pw">
					<th>��й�ȣ</th>
					<td>
						<input name="pwd" id="pwd" type="password" placeholder="��й�ȣ" />
					</td>
				</tr>
				
				<tr id="tr_name">
					<th>�̸�</th>
					<td>
						<input name="name" id="name" type="text" placeholder="�̸�" />
					</td>
				</tr>
					
				<tr id="tr_mail">
					<th>�̸���</th>
					<td>
						<input name="mail" id="mail" type="text" placeholder="�̸���" />
					</td>
				</tr>
				
				<tr id="tr_birth">
					<th>����</th>
					<td>
						${n.birth}
					</td>
				</tr>
				
				<tr>
				<th><label>�̺�Ʈ ������ �ް� ���� ī�並 ������ �ּ���</label></th>
				<td>
					<form name="check">
						<div class="cm-check">
							<input type="checkbox"  id="cafes" name="cafes" value="1 "/> 
							 	<label class="cm-check2">����</label> 
							<input type="checkbox"  id="cafes" name="cafes" value="2 "/> 
								<label class="cm-check2">��Ÿ����</label> 
							<input type="checkbox" id="cafes" name="cafes" value="3 "/> 
							    <label class="cm-check2">�̵��</label>
						   <input type="checkbox"  id="cafes" name="cafes" value="4 "/> 
								<label class="cm-check2">Ŀ�Ǻ�</label> 
						   <input type="checkbox"  id="cafes"name="cafes" value="5 "/> 
						       <label class="cm-check2">�����÷��̽�</label>
						   <input type="checkbox"  id="cafes" name="cafes" value="6 "/> 
						       <label class="cm-check2">�Ҹ���Ŀ��</label>
						</div>
					</form>
				</td>
			</tr>
</body>
</html>