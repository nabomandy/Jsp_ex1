<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="Member.MemberBeanDAO"%>
<%@ page import="Member.MemberBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 0. memberlist���� �ѱ� id�� �޾���  1. ������ ���̽����� ��� ȸ���� ������ ������  2.table ��ũ�� �̿��Ͽ� ȭ�鿡 ȸ���� ������ ��� -->	
	<% 
		String id = request.getParameter("id"); //memberlist id�� �޾���
		MemberBeanDAO mbao = new MemberBeanDAO();
		MemberBean mbean = mbao.oneSelectMember(id);//�ش��ϴ� id�� ȸ�� ������ ����
	%>
	
	<center>
	<h2> ��� ȸ�� ���� </h2>
		<table width ="400" border="1">
			<tr height="50">
				<td align = "center" width = "150">���̵� </td>
				<td width = "250"><%=mbean.getId() %> </td>
			</tr>
			<tr height="50">
				<td align = "center" width = "150">�̸���  </td>
				<td width = "250"><%=mbean.getEmail() %> </td>
			</tr>
			<tr height="50">
				<td align = "center" width = "150">��ȭ </td>
				<td width = "250"><%=mbean.getTel() %> </td>
			</tr>
			<tr height="50">
				<td align = "center" width = "150">��� </td>
				<td width = "250"><%=mbean.getHobby() %> </td>
			</tr>
			<tr height="50">
				<td align = "center" width = "150">����</td>
				<td width = "250"><%=mbean.getJob() %> </td>
			</tr>
			<tr height="50">
				<td align = "center" width = "150">���� </td>
				<td width = "250"><%=mbean.getAge() %> </td>
			</tr>
			
			<tr height="50">
				<td align = "center" width = "150">���� </td>
				<td width = "250"><%=mbean.getInfo() %> </td>
			</tr>
	
			<tr height="50">
				<td align = "center" colspan="2"> 
					<button onclick="location.href='MemberUpdateForm.jsp?id=<%=mbean.getId()%>'">ȸ�� ����</button>
					<button onclick="location.href='MemberDeleteForm.jsp?id=<%=mbean.getId()%>'">ȸ�� ����</button>
					<button onclick="location.href='MemberList.jsp'">��� ����</button>
					<button onclick="location.href='MemberJoin.jsp'">ȸ�� ����</button>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>