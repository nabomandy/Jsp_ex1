<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!--RequestLogin���� �Ѿ�� ���̵�� �н����带 �о� �帲   -->
	
<% 
	//������� ������ ����Ǿ� �ִ� ��ü request�� geparameter() ������� ������ ����
	String id = request.getParameter("id");//������� id ���� �о����� ���� id�� ����
	String pass= request.getParameter("pass");
%>
	<h2>
		Requestforword.jsp ������ �Դϴ�<br />
		����� ���̵��<%= id %>�̰� �н������ <%=pass %>�Դϴ�.
	</h2> 	
	
	<a href="Requestforword.jsp">���� ������</a>
</body>
</html>