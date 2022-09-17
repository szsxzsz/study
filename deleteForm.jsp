<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>deleteForm.jsp</h1>
<h2>회원 탈퇴페이지</h2>
	<form action="deletePro.jsp" method="post">
	id : <input type="text" name="id"> <br>
	pw : <input type="password" name="pw"> <br>
	<input type="submit" value="delete info">
	</form>
</body>
</html>
