<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="write.css">
<script type="text/javascript" src="write.js"></script>
</head>
<body>
	<p>글쓰기</p>
	<form action="writePro.jsp"  method="post">
		<table  border= "1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="writer"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="subject"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="50" cols="60"></textarea></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="글쓰기"><input
					type="reset" value="다시작성"><input type="button" value="목록보기"></td>
			</tr>

		</table>
	</form>
</body>
</html>