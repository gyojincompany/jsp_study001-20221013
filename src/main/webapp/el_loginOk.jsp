<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	%>
	아이디 : <%= id %><br>
	비밀번호 : <%= pw %><br>
	<hr>
	EL 사용<br><br>
	아이디 : ${param.id }<br>
	비밀번호 : ${param.pw }<br>
	<hr>
	<%  
		String sname = session.getAttribute("sname").toString();	
	%>
	세션값 : <%= sname %><br>
	<hr>
	EL 사용<br><br>
	세션값 : ${sessionScope.sname }
	<!--  쿠키값 : ${Cookie.sname } -->
</body>
</html>