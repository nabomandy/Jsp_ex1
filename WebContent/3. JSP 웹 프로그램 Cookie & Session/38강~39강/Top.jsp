<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	//�α׾ƿ� Ŭ���� �Ķ���͸� ���ؼ� �α׾ƿ��������� �ľ�
	String logout = request.getParameter("logout");

	if(logout != null){
		//id��  null ���� �ο� 
		session.setAttribute("id",null);
		
		//���� ���� �ð��� ���̽ÿ�
		session.setMaxInactiveInterval(0);
	}

	//������ ���Ͽ� id�� �о�帲
	String id = (String)session.getAttribute("id");

	//�α����� �Ǿ� ���� �ʴٸ� session���� null ó�� ���� 
	if(id == null){
		id = "�մ�";
	}
%>
		<!--Top  -->
		<table width = "800"> 
			<tr height="100">
			<!--�ΰ� �̹���  -->
				<td colspan = "2" align = "center" width= "260">
					<img alt = "" src = "images/1.png" width="200" height="70">
				</td>
				
				<td colspan = "4" align = "center">
					<font size= "10">���� ķ�� </font>
				</td>
			</tr>
			<tr height="50">
				<td width = "100" align = "center">��Ʈ</td>
				<td width = "100" align = "center">����</td>
				<td width = "100" align = "center">�ı��</td>
				<td width = "100" align = "center">ħ��</td>
				<td width = "100" align = "center">���̺�</td>
				<td width = "200" align = "center">
				
				<% 
					 if(id.equals("�մ�")){				 
				%>
					<%=id %> ��<button onclick= "location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">�α���</button>
					
				<%	}else{%>
					<%=id %> ��<button onclick= "location.href='SessionMain.jsp?logout=1'">�α׾ƿ�</button>
				<% 
					}	
				%>
				</td>		
			</tr>
		</table>
</body>
</html>