<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>prc1.jsp</h1>
	
	<fieldset>
	
		<legend>연습용</legend>
		<h3> NewJeans </h3>
			<form action="prc2.jsp" method="post">
			name : <input type="text" name="name"> <br>
			reason : <input type="radio" value="cute" name="reason">
					<span>cute</span>
					<input type="radio" value="lovely" name="reason">
					<span>lovely</span>
					<input type="radio" value="pure" name="reason">
					<span>pure</span> <br>
			favorite song : <input type="checkbox" value="attention" name="song">
					<span>attention</span>
					<input type="checkbox" value="hype boy" name="song">
					<span>hype boy</span> <br>
			give them your color : <input type="color" name="color"> <br>
			time : <input type="datetime-local" name="time"> <br>
			<input type="submit" value="submit">
			<input type="reset" value="reset">
		
		
		</form>
	
	
	</fieldset>
   
 
</body>
</html>
