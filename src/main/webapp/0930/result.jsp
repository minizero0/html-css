<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이동완료
	<hr>
	
	<%
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String gender = request.getParameter("gender");
		String snack = request.getParameter("snack");
		String job[] = request.getParameterValues("job");
	%>
	
	<h1>이름 : <%= username %></h1>
	<h1>성별 : <%= gender %></h1>
	<h1>간식 : <%= snack %></h1>
	<h1>직업 : <%
				if(job != null){
					for(String a : job){ 
						%>
						<%= a %>	
						<%
					}
				}
	%></h1>

</body>
</html>