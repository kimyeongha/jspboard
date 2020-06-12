<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="ch12.board.BoardDBBean" %>
        <%@ page import="ch12.board.BoardDataBean" %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
BoardDBBean dbPro= BoardDBBean.getInstance(); //일단 db를 들고와서 인스턴ㅅ느화 
int num = Integer.parseInt(request.getParameter("num"));  //list.jsp?num=로 클릭한 숫자를 num에 저장하고 그걸 보냄 여기선 그걸 받고
BoardDataBean list  = dbPro.conBoard(num);   //conBoard 의 리턴값을 선언한 list 에 저장하고 

%>
<h1>글내용보기</h1>
<table border="1">
     <tr>
        <td>글 번호</td>  <td><%= list.getNum() %></td>   <td>조회수</td>  <td><%=list.getReadcount() %></td>
     </tr>
     <tr>
        <td>작성자</td>  <td><%= list.getWriter() %></td>   <td>작성일</td>  <td><%=list.getReg_date() %></td>
     </tr>
     <tr>
        <td>글 제목</td>  <td colspan="3"><%= list.getSubject() %></td>   
     </tr>
       <tr>
        <td>글 내용</td>  <td colspan="3"><%= list.getContent() %></td>   
     </tr>
</table>
  <a href="updateForm.jsp?num=<%=num %>">글수정</a> 
  <a href="deleteForm.jsp?num=<%=num %>">글삭제</a>
<a href="writeForm.jsp?num=<%=num%>&ref=<%= list.getRef() %>&re_step=<%= list.getRe_step() %>&re_level=<%= list.getRe_level()%>">답글</a>

</body>

</html>