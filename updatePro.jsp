<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="ch12.board.BoardDBBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <%
          request.setCharacterEncoding("utf-8");
   
   %> 
   <jsp:useBean id="update" scope="page" class="ch12.board.BoardDataBean">
     <jsp:setProperty name="update" property="*" />
   
   </jsp:useBean>
   <%
      BoardDBBean dbpro = BoardDBBean.getInstance();
       dbpro.updateBoard(update);
       response.sendRedirect("list.jsp");
       
   %>
</body>
</html>