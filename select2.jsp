<%@page import="java.sql.ResultSet"%>
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
<h1>select2.jsp</h1>
<h2>make info-table</h2>
<hr>
<table border="1">
	<tr>
		<th>ID</th>
		<th>PW</th>
		<th>Name</th>
		<th>Age</th>
		<th>Gender</th>
		<th>Email</th>
	</tr>	

<%
//디비연결정보 (상수)
	final String DRIVER = "com.mysql.cj.jdbc.Driver";
	final String DBURL = "jdbc:mysql://localhost:3306/sys";
	final String DBID = "root";
	final String DBPW = "1234";
	
	// Driver load
	Class.forName(DRIVER);
	
	// DB connect
	Connection con = DriverManager.getConnection(DBURL,DBID,DBPW);
	
	// sql & pstmt
	String sql = "select * from itwill_member";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	// run sql
	ResultSet rs = pstmt.executeQuery();
	
	// rs(정보 출력) - 'rs' have information what i use sql
	// so use "rs.get ~~".
	while(rs.next()){
		String id = rs.getString("id");
		String pw = rs.getString("pw");
		String name = rs.getString("name");
		int age = rs.getInt("age");
		String gender = rs.getString("gender");
		String email = rs.getString("email");
		
// 		out.println("id : "+id+"<br>");
// 		out.println("pw : "+pw+"<br>");
// 		out.println("name : "+name+"<br>");
// 		out.println("age : "+age+"<br>");
// 		out.println("gender : "+gender+"<br>");
// 		out.println("email : "+email+"<br>");
		%>
	<tr>
		<td><%=id%></td>
		<td><%=pw %></td>
		<td><%=name %></td>
		<td><%=age %></td>
		<td><%=gender %></td>	
		<td><%=email %></td>
	</tr>	
	<%		
	}
%>



</table>
</body>
</html>
