<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>deletePro.jsp</h1>
<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	// 디비연결정보 (상수)
		final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/sys";
		final String DBID = "root";
		final String DBPW = "1234";
		
	Class.forName(DRIVER);
	
	Connection con = DriverManager.getConnection(DBURL,DBID,DBPW);
	
	
	String sql = "select id from itwill_member where pw = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	pstmt.setString(1,pw);
	
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){ 
		if(id.equals(rs.getString("id"))){
			// 
			sql = "delete from itwill_member where id=?";
			// 같다면 sql문으로 pw가 ?인 행을 삭제 
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1,id);
			
			pstmt.executeUpdate();
		}
	} else {
		// not a user
	}
%>
</body>
</html>
