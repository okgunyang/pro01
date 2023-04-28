<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %> 
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=utf-8");

	int bid = Integer.parseInt(request.getParameter("bid"));
	String id = request.getParameter("id");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user = "postgres";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String sql = "";
	String passId = "";
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "update board set title=?, content=?, author=? where bid=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, title);		//title
				pstmt.setString(2, content);	//content
				pstmt.setString(3, id);		//author
				pstmt.setInt(4, bid);		//bid
				int n = pstmt.executeUpdate();
				if(n>0){
					response.sendRedirect("./newsroom.jsp#page4");
				} else {
					response.sendRedirect("./boardUpdate.jsp?bid="+bid);
				}
				pstmt.close();
				conn.close();
			} catch(SQLException e){
				System.out.println("SQL 전송 실패");
			}
		} catch(SQLException e){
			System.out.println("데이터베이스 연결 실패~!");
		}
	} catch(ClassNotFoundException e){
		System.out.println("드라이버 로딩 실패~!");
	}
%>