<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="write.css">
<script type="text/javascript" src="../js/jquery.js"></script>
<script type="text/javascript" src="../js/write.js"></script>

</head>
<body>
	<%
		int num = 0, ref = 1, re_step = 0, re_level = 0;
		String strV = "";
		if (request.getParameter("num") != null) {
			num = Integer.parseInt(request.getParameter("num"));
			ref = Integer.parseInt(request.getParameter("ref"));
			re_step = Integer.parseInt(request.getParameter("re_step"));
			re_level = Integer.parseInt(request.getParameter("re_level"));
			System.out.println("num=" + num);

		}
	%>

	<p>글쓰기</p>
	<form action="writePro.jsp" method="post">
		<input type="hidden" name="num" value="<%=num%>"> 
		<input type="hidden" name="ref" value="<%=ref%>">
		 <input type="hidden" name="re_step" value="<%=re_step%>">
		  <input type="hidden" name="re_level" value="<%=re_level%>">

		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="writer"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td>
				     <%
				         if(request.getParameter("num")==null){
				        	 strV=" ";
				         }else{
				        	 strV="[답글]";
				         }
				     
				     
				     %>
				
				<input type="text" name="subject" value="<%=strV %>"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="50" cols="60" name="content"></textarea></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="글쓰기"><input
					type="reset" value="다시작성"><input type="button" value="목록보기"
					id="button"></td>
			</tr>

		</table>
	</form>
</body>
</html>