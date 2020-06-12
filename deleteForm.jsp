<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	     int num =Integer.parseInt(request.getParameter("num"));
	
	%>
	
	<h1>글삭제</h1>
	<form action="deletePro.jsp">
		<table border="1">
			  <tr>
				<td>글번호</td>
				<td><input type="text" name="num" readonly value="<%= num %>"></td>
			</tr>
			
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="passwd"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="제출하기"></td>
			</tr>


		</table>
	</form>
</body>
</html>