<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2> ���� �α��� ó�� 2 </h2>
	
	<% 
		request.setCharacterEncoding("UTF-8");
		
		//String id= request.getParameter("id");	
		//String pass = request.getParameter("pass");
		
		//������ �̿��Ͽ� �����͸� �ҷ���
		String id   = (String)session.getAttribute("id");	
		String pass = (String)session.getAttribute("pass");
	%>
	
	
	<h2>����� ���̵�� <%=id%> �Դϴ�. �н� �����<%=pass%>�Դϴ� </h2>
</center>



</body>
</html>