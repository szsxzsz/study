<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<h1>prc2.jsp</h1>
		
		<%
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String reason = request.getParameter("reason");
		String song = request.getParameter("song");
		
		String color = request.getParameter("color");
		String time = request.getParameter("time");
		%>
		
		전달값 : <%=name %>
		전달값 : <%=reason %>
		전달값 : <%=song %>
		전달값 : <%=color %>
		전달값 : <%=time %>


</body>
</html>
