<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>insertPro.jsp</h1>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	int age = Integer.parseInt(request.getParameter("age"));
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String date = request.getParameter("date");
%>
	<%
	// 0. 드라이버 설치 - 생략
		 // 디비연결정보 (상수)
		   final String DRIVER = "com.mysql.cj.jdbc.Driver";
		   final String DBURL = "jdbc:mysql://localhost:3306/sys";
		   final String DBID = "root";
		   final String DBPW = "1234";
		   
		// 1. Driver load
		Class.forName(DRIVER);
		
		// 2. Connect DB
		Connection con = DriverManager.getConnection(DBURL,DBID,DBPW);
		
		// sql & pstmt
		String sql = "insert into itwill_member (id,pw,name,age,gender,email) "+
		" values (?,?,?,?,?,?)";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		//????
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.setString(3, name);
		pstmt.setInt(4, age);
		pstmt.setString(5, gender);
		pstmt.setString(6, email);
		
		// run
		pstmt.executeUpdate();
		
		
		response.sendRedirect("select.jsp");
	%>
	
</body>
</html>
