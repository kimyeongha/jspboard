<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ch12.board.BoardDBBean"%>
<%@ page import="java.util.*"%>
<%@ page import="ch12.board.BoardDataBean"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/list.css">
</head>
<body>

	<%
		List<BoardDataBean> boardlist = null;

		BoardDBBean dbPro = BoardDBBean.getInstance(); // getInstance 는 클래스 매소드  static 해놧엇음
		boardlist = dbPro.listBoard(); // name = write
	%>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일</td>
			<td>조회수</td>
		</tr>
		<%
			for (int i = 0; i < boardlist.size(); i++) {
				BoardDataBean list = boardlist.get(i);
		%>
		<tr>
			<td><%=list.getNum()%></td>
			<%
			       int wid=0;
			      if (list.getRe_level()>0){
			    	  wid= 10*(list.getRe_level());
			      }else{
			    	  wid=0;
			      }
			  
			
			%>
			<td width="<%= wid%>"><a href="content.jsp?num=<%=list.getNum()%>"><%=list.getSubject()%></a></td>
			<td><%=list.getWriter()%></td>
			<td><%=list.getReg_date()%></td>
			<td><%=list.getReadcount()%></td>
		</tr>
		<%
			} //반복문 end
		%>

	</table>
	<a href="writeForm.jsp">글쓰기</a>
</body>
</html>