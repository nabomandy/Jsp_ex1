<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2> ���� �α��� ó�� 1 </h2>
	
	<% 
		request.setCharacterEncoding("UTF-8");
		
		//����ڷ� ���� �����͸� �о�帲 
		String id= request.getParameter("id");	
		String pass = request.getParameter("pass");
		
		//���̵�� �н����带 ���� 
		session.setAttribute("id",id);
		session.setAttribute("pass",pass);
		
		//���� ���� �ð� ���� 
		session.setMaxInactiveInterval(60*2);//2�а� ���̵� ����
		response.sendRedirect("SessionMain.jsp");
	%>
	
	
</center>

</body>
</html>