<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>    
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=utf-8");

	String id = request.getParameter("id");

	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost/pro1";
	String user = "postgres";
	String pass = "1234";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "";
	String passId = "";
	
	try {
		Class.forName(driver);
		try {
			conn = DriverManager.getConnection(url, user, pass);
			sql = "select * from member where id=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>아이디 중복 체크</title>
<style>
</style>
</head>
<body>
	<input type="hidden" id="ck_id" name="ck_id" value="<%=id %>">
<%				
				if(rs.next()){
					//이미 회원이 사용이므로 가입할 수 없는 아이디
%>
					<h3>사용이 불가능한 아이디 입니다. 다시 입력하시기 바랍니다.</h3>
					<input type="hidden" id="ps" name="ps" value="no">
					<input type="hidden" id="msg" name="msg" value="사용이 불가능한 아이디 입니다. 다시 입력하시기 바랍니다.">
<%
				
				} else {
				//현재 존재하지 않는 아이디로서 사용가능한 아이디
%>
					<h3>사용이 가능한 아이디 입니다.</h3>
					<input type="hidden" id="ps" name="ps" value="yes">
					<input type="hidden" id="msg" name="msg" value="사용이 가능한 아이디 입니다.">
<% 				} %>
					<button type="button" onclick="closing()">닫기</button>
					<script>
					function closing(){
						var ps = document.getElementById("ps").value;
						opener.document.getElementById("id").value = document.getElementById("ck_id").value;
						opener.document.getElementById("id_ck").value = document.getElementById("ps").value;
						opener.document.getElementById("msg").innerText = document.getElementById("msg").value;
						if(ps=="yes"){
							opener.document.getElementById("id").setAttribute("readonly", true);
						}
						window.close();
					}
					</script>
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
%>


