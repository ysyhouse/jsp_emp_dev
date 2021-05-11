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
ex) 요청값 처리 예제

0417_02.jsp?reg_member=himan
해당 id가 himan이면 등록된 회원입니다. 출력
그외에는 @@@는 등록 가능한 아이디입니다. 출력

 --%>
 
 
 
 <%
 String reg_member = request.getParameter("reg_memberll");
 
 
 if(reg_member.equals("himan")){
	 %>
	
	<h2><%=reg_member %>등록된 회원입니다.</h2> 
<%
 }else{
 %>
 
 <h2><%=reg_member %>는 등록 가능한 아이디 입니다.</h2>
 <%} %>
 
 
</body>
</html>