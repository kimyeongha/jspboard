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
   <jsp:useBean id="write" scope="page" class="ch12.board.BoardDataBean">    <!-- 어디서 끝낼것인가 class를 id 값에 저장 -->
          <jsp:setProperty name="write" property ="*"  />  <!-- 받은 정보를 데이터빈으로 *로 다 보낸다  id=write-->
   </jsp:useBean>
   <%
        BoardDBBean dbPro = BoardDBBean.getInstance();   // getInstance 는 클래스 매소드  static 해놧엇음
         dbPro.insertBoard(write);   // name = write
         response.sendRedirect("list.jsp");  
   %>
</body>
</html>