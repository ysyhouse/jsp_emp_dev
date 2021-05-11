<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%-- 초기 화면 호출
java 와 html 코드를 합쳐서 화면에 출력 처리
java 변수 lunchMenu로 할당 scriptlet<% %>
화면 출력 html 코드 <h3>오늘의 점심메뉴</h3> --%>

<% String lunchMenu ="카페라떼와 아몬드"; %>

<h3>오늘 저의 점심메뉴는<%=lunchMenu %>입니다.</h3>

</body>
</html>