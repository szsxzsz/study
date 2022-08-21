<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@include file="color.jsp" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body bgcolor="<%=col1 %>">
	<h1>prc2_3.jsp</h1>
	<%=col2 %>
   
    <table border="1" width="700" height="1000">
    
    	<tr>
    	<td colspan="2" height="250">
   		 <jsp:include page="top.jsp">
   		 	<jsp:param value="NJ" name="id"/>
   		 </jsp:include>
   		</td>
    	</tr>
    
   		 <tr>
    	<td width="200">
    		<jsp:include page="left.jsp"></jsp:include>
    	</td>
    
   		 <td>
    		<h1>메인</h1>
    	</td>
    	</tr>
    
    	<tr>	
    	<td colspan="2" height="250">
    		<jsp:include page="bottom.jsp"></jsp:include>
    	</td>
    	</tr>
    
    
    </table>

</body>
</html>
