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
1. 페이지와 함께 서버에 데이터를 전송할 때, 사용된다.
2. client에서 페이지/요청값 처리 방식
	get방식
	페이지명?요청key=요청value
	ex) a02_request.jsp?id=himan&pass=7777
	http://localhost:7080/jspexp/a01_basic/a02_request.jsp?id=himan&pass=7777
2. server에서 해당 내용을 처리
	페이지명에 해당하는 자원(jsp/html)을 webapp경로 하위에서 찾아서 처리
	요청값은 request(HttpServletRequest)의 기능메서드 .getParameter("요청키")
	로 받는다.
	그 내용에 따라서 조건이나 반복등의 프로세스를 java로 처리한다.
3. 위에 조건에 따라서 최종 결과를 html만들어 client에 전달한다.	
 --%>
 <%
 String id = request.getParameter("id"); 
 // id변수 안에는 himan이 할당된다.
 String pass = request.getParameter("pass"); 
 // pass변수 안에는 7777가 할당된다.
 
 if(id.equals("himan") && pass.equals("7777") ){
%>
	<!-- 화면 출력 영역 -->
	<h2><%=id %>님 로그인 성공</h2>
<%	 
 }else{
 %>
 	<h2><%=id %>님 로그인 실패</h2>
 	<!-- 화면 출력 영역 -->
<%}%> 
 


</body>
</html>