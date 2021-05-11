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
ex) 초기 화면 호출
java와 html코드를 합쳐서 화면에 출력처리
java변수 lunchMenu로할당.scriptlet <%%>
화면출력 html코드 <h3>오늘의 점심메뉴 </h3>
expresstion <%=자바변수%>
브라우저에서 소스보기로 확인.
 --%>
  <%
 // scriptlet 자바프로그램 선언/반복문/조건문 처리.
 String lunchMenu = "가쯔나베";
 %>
 <h3>오늘의 점심메뉴 <%=lunchMenu%></h3>
</body>
</html>