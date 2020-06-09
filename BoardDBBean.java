package ch12.board;



import java.sql.*;
 import javax.sql.*;
 import javax.naming.*;

public class BoardDBBean {

	private static BoardDBBean instance = new BoardDBBean();
	
	
	public static BoardDBBean getInstance() {
		return instance;
	}

	private Connection getConnection() throws Exception {     
	Context init = new InitialContext();
	DataSource ds = (DataSource) init.lookup("java:comp/env/jdbc/mysql");
	
   
	return  ds.getConnection();
}
	// writePro.jsp 페이지에서 사용할 메소드 (insert 문): boardbean 테이블이ㅔ 글
	public void insertBoard(BoardDataBean write) throws Exception  {
		Connection conn= null;
		PreparedStatement pstmt =null;
		String sql="";
		try {
		conn= getConnection();
		      //sql 문장 
		     sql="insert into boardbean(writer,subject,email,content,passwd,reg_date,ref,re_step,re_level,content) values(?,?,?,?,?,?,?)";
		    	pstmt=conn.prepareStatement(sql);	 
		     pstmt.setString(1, write.getWriter());
		     pstmt.setString(2, write.getEmail());
		     pstmt.setString(3,write.getSubject());
		     pstmt.setString(4,write.getEmail());
		     pstmt.setString(5,write.getPasswd());
		     pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally{
			if(pstmt!=null) {pstmt.close();}
		    if(conn!=null) {conn.close();}
		}
	}
}
