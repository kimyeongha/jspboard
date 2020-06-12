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
      request.getParameter("num");//이렇게 num만 끌어와서 
%>
   <jsp:useBean id="delete" scope="page" class="ch12.board.BoardDataBean">
    <jsp:setProperty name="delete" property="*" />
  
   </jsp:useBean>
   <%
   BoardDBBean dbpro = BoardDBBean.getInstance();
   dbpro.deleteBoard(delete);  //여기다가 자바빈으로 delete넘기는거보다  num 값을 넘기는게 자바빈 안쓰고 프로그램이 가벼워짐
   response.sendRedirect("list.jsp");
   %>
</body>
</html>