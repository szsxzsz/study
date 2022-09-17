<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>insertForm.jsp</h1>
<h2>insert info page</h2>

	<form action="insertPro.jsp" method="post">
	id : <input type="text" name="id"> <br>
	pw : <input type="password" name="pw"> <br>
	name : <input type="text" name="name"> <br>
	age : <input type="text" name="age"> <br>
	gender : <input type="radio" name="gender" value="M"> male
	<input type="radio" name="gender" value="F"> Female <br>
	email : <input type="email" name="email"> <br>
	date : <input type="datetime-local" name="date"> <br>
	<input type="submit" value="submit">
	</form>
</body>
</html>
