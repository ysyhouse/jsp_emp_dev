<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
# 요청값의 처리
http://localhost:7080/?id=himan&pass=7777
ex) 
 --%>
 <%
 String id = request.getParameter("id");
 String pass = request.getParameter("pass");
 
 if(id.equals("himan") && pass.equals("7777")) {
 %>
 <h2><%=id%>님 로그인 성공</h2>
 
 <%
 } else {
 %>
 <h2><%=id%>님 로그인 실패</h2>
 <%
 }
 %>
</body>
</html>