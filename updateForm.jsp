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
업데이트 폼입니다
  <%
BoardDBBean dbPro =BoardDBBean.getInstance();
int num = Integer.parseInt(request.getParameter("num"));
BoardDataBean list =dbPro.conBoard(num);

//db.setNum(num);
  
  %>
  
<h1>글수정하기</h1>
<form action="updatePro.jsp" method="post">
     <table border="1">
         <tr>
            <td>글번호</td><td ><input type="text" name="num" readonly value="<%=num %>"></td><td>조회수</td><td>0</td>
         </tr>
         <tr>
            <td>작성자</td><td><input type="text" name="writer" value="<%= list.getWriter() %>"></td><td>작성일</td><td><%=list.getReg_date() %></td>
         </tr>
         <tr>
            <td>글제목</td><td colspan="3"><input type="text" name="subject" value="<%= list.getSubject() %> "></td>   
         </tr>
          <tr>
            <td>글내용</td><td colspan="3"><textarea rows="30" cols="40" name="content"><%= list.getContent() %></textarea></td>   
         </tr>
          <tr>
            <td>email</td><td colspan="3"><input type="text" name="email" value="<%= list.getEmail() %>"> </td>   
         </tr>
          <tr>
            <td>비밀번호</td><td colspan="3"><input type="password" name="passwd"> </td>   
         </tr>
         <tr>
            <td colspan="4"><input type="submit" value="수정완료"></td>   
         </tr>
        
     </table>
</form>

</body>
</html>