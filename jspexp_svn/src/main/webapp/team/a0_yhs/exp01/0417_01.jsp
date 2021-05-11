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
ex) 초기 화면 호출..
java와 html 코드을 합쳐서 화면에 출력 처리.
java 변수  lunchMenu로 할당. scriptlet <% %>
화면 출력 html코드  <h3>오늘의 점심메뉴 @@@@</h3>
	expression <%=자바변수%>
브라우저에서 소스보기로 확인.  ~15:07
 --%>
<%
String lunchMenu="김밥";
%> 
<h3>오늘의 점심메뉴 <%=lunchMenu%></h3>
</body>
</html>