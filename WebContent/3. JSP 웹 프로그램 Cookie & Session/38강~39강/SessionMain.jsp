<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	//Center���� ������ �ֱ� ���ؼ� request��ü�� �̿��Ͽ� center���� �޾ƿ�
	String center =  request.getParameter("center");
	
	//ó�� SessionMain.jsp�� �����ϸ� null ���� ����Ǳ� ���� nulló���� ���� 
	if(center == null){
		center = "Center.jsp";
	}
%>

	<center>
	<table border="1" width = "800">
		<!-- Top -->
		<tr height="150">
 			<td align="center" colspan="2">
 				<jsp:include page="Top.jsp" />		
			</td>
		</tr>
		
		<tr height="400">
			<!-- Left -->
			 <td align="center" width = "200"><jsp:include page="Left.jsp"/></td>
			 <!-- Center -->	
			 <td align="center" width = "600"><jsp:include page ="<%=center %>" /></td>
		</tr>
		
		<!--Buttom-->
		<tr height="100">
 			<td align="center" colspan="2"><jsp:include page= "Buttom.jsp" /></td>
		</tr>
	</table>
</center>

</body>
</html>