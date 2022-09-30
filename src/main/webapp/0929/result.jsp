<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이동되었습니다.
	<hr>
	<% 
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String bloodType = request.getParameter("bloodType");
		String hobby[]  = request.getParameterValues("hobby");
		String code  = request.getParameter("code");
	%>
	<h1>아이디 : <%= id %></h1>
	<h1>비밀번호 : <%= pw %></h1>
	<h1>혈액형 : <%= bloodType %></h1>
	<h2>취미 : 
		<% 
			if(hobby != null){
				for(String a : hobby){
					%>
					<%= a %>
					<%
				}
					
			}	
	
		%></h2>
	<h2>히든 : <%= code %></h2>
</body>
</html>