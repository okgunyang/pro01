<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user = "postgres";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			//sql = "select board.bid as bid, board.title as title, board.resdate as resdate, member.name as name from board, member where board.author=member.id";
			//sql = "select a.bid as bid, a.title as title, a.resdate as resdate, b.name as name from board a inner join member b on a.author=b.id";
			//sql = "select bid, title, content, (select name from member where id=board.author) as name, resdate from board";
			//sql = "select bid, title, content, resdate, name from (select * from member, board where author=id) as data";
			sql = "select bid, title, content, resdate, member.name from board, member where author in (select id from member)";
			try {
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>데이터베이스 게시판 목록 테스트</title>
<style>
table { display:table; width:900px; margin:10px auto; 
border-bottom:1px solid #333; 
border-collapse:collapse; }
tr { display:table-row; }
th, td { display:table-cell; border-top:1px solid #333;
text-align:center; line-height:36px; }
th { background-color:#333; color:#fff; }
</style>
</head>
<body>
	<h2>게시판목록</h2>
	<hr>
	<nav>
		<a href="index.jsp">메인으로</a>
	</nav>
	<hr>
	<table>
		<thead>
			<tr><th>글번호</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
		</thead>
		<tbody>
<%
						while(rs.next()){
%>							
			<tr>
				<td><%=rs.getString("bid") %></td>
				<td><%=rs.getString("title") %></td>
				<td><%=rs.getString("name") %></td>
				<td><%=rs.getString("resdate") %></td>
			</tr>
<%							
						}
%>	
		</tbody>
	</table>
</body>
</html>
<%
				rs.close();
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
%></html>