<%@page import="java.sql.Statement"%>
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
<h1>insert.jsp</h1>
</body>
</html>
<%
	   // 0. 드라이버 설치 - 생략

	   // 디비연결정보 (상수)
	   final String DRIVER = "com.mysql.cj.jdbc.Driver";
	   final String DBURL = "jdbc:mysql://localhost:3306/sys";
	   final String DBID = "root";
	   final String DBPW = "1234";
	   
	   // 1. 드라이버로드
	   Class.forName(DRIVER);
	   
	   // 2. DB connect
	   Connection con = DriverManager.getConnection(DBURL,DBID,DBPW);
	   
	   // 3. sql & stmt
	   String sql = "insert into itwill_member (id,pw,name,age,gender,email) values"
			   + " ('admin1','123','namsuji','30','w','itwill1@itwill.com')";
	   
	   Statement stmt = con.createStatement();
	   
	   stmt.executeUpdate(sql);
	   
	
	%>
	
	
