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
	ex)초기화면 호출..
	첫 번째 문제입니다.
	java와 html 코드를 합쳐서 화면에 출력 처리하세요!
 	java 변수 lunchMenu로 할당. scriptlet <% %>
 	화면출력 html코드 
 --%>
 <% String lunchMenu = "EGGDrop의 아포카토샌드위치";%>

 
 <h2> 여기는 html코드 입니다.
 저의 점심 메뉴는 <%=lunchMenu %>였습니다 </h2>
</body>
</html>