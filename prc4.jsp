<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>practice page2</h1>
	
	<%
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		String disease[] = request.getParameterValues("disease");
		String bloodtype = request.getParameter("bloodtype");
		String txt = request.getParameter("txt");
	
	
	%>
	
	<h4>이름 : <%=name %></h4>
	<h4>생년월일 : <%=birth %></h4>
	<h4>이메일 : <%=email %></h4>
	
	<% 
	if(disease != null){
		for(int i = 0; i < disease.length; i++) {
			out.println("<h4>환부" + (i+1) + " : " + disease[i] + "</h4>");
		}
	}
	%>
	<h4>혈액형 : <%=bloodtype %></h4>
	<h4>특이사항 : <%=txt %></h4>
</body>
</html>
