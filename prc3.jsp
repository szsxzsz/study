<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>practice page</h1>
	
	<fieldset>
	<form action="prc4.jsp" method="post">
		성함 <input type="text" name="name"> <br>
		생년월일 <input type="text" name="birth" value="19xx년 xx월 xx일"> <br>
		이메일 <input type="email" name="email" value="email@xxx.com"> <br>
		환부 <input type="checkbox" name="disease" value="소화"> 소화계
		<input type="checkbox" name="disease" value="신경"> 신경계
		<input type="checkbox" name="disease" value="이비인후"> 이비인후과<br>
		<input type="checkbox" name="disease" value="정형"> 정형과
		<input type="checkbox" name="disease" value="심폐"> 심폐질환
		<input type="checkbox" name="disease" value="비뇨"> 비뇨계 <br>
		
		혈액형 <select name="bloodtype">
			<option value="">혈액형을 선택하세요</option>
			<option value="RH+A">RH+A형</option>
			<option value="RH-A">RH-A형</option>
			<option value="RH+B">RH+B형</option>
			<option value="RH-B">RH-B형</option>
			<option value="RH+O">RH+O형</option>
			<option value="RH-O">RH-O형</option>
			<option value="RH+AB">RH+AB형</option>
			<option value="RH-AB">RH-AB형</option>
		</select> <br>			
		특이사항 <textarea name="txt" rows="20" cols="20">약 복용정보, 알레르기 정보 등</textarea> <br>
		<input type="submit" value="제출하기">
</body>
</html>
