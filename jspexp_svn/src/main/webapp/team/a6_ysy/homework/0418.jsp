<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,jspexp.z01_vo.*,team.a6_ysy.z01_vo.Music"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
	href="${path}/a00_com/a00_com.css">
<script src="${path}/a00_com/jquery-3.4.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		<%-- 
		
		--%>
		$("h2").text("시작");
	});
</script>
</head>

<%--1.클래스의 구성 요소(생성자, 필드 , 메소드 ) 사용법 확인 
	2.Music클래스(타이틀,싱어, 발매년도) VO선언
	1)jsp scriptlet(<%%>)으로 출력
	2)el로 출력 처리 request.setAttribute()활용
	3)useBean을 활용하여 출력
	3.반복문과 조건문의 사용
	1)jsp scriptlet(<%%>), jstl로 10~20까지 출력
	2)jsp scriptlet(<%%>) 100~80출력
	3)jsp scriptlet(<%%>) 1~20까지 짝수 출력
	4)jstl을 이용하여 ArrayList<Integer>,request.setAttribute()활용으로 물건의 가격을 할당하고 테이블로 리스트 출력
	4.요청값 처리
	1)페이지?query string의 기본형식과 form 하위객체 name value와의 관계 정리
	2)도서관에 가서 시스템사용
	빌릴도서[]
	대여기간[]
	대여자[]
	대출클릭시 request.getParameter(),${param.요청}
	처리화면을 출력
	5.session scope범위를 useBean을 이용하여 간단한 활용예제를 처리하세요

--%>

<% Music music= new Music(); 
	music.setTitle("에잇");
	music.setSinger("아이유");
	music.setStart_year(2020);
	
	pageContext.setAttribute("music01", music);
%>
<jsp:useBean id="music02" class="team.a6_ysy.z01_vo.Music"/>
<jsp:setProperty property="title" name="music02" value="아이유음악"/>
<jsp:setProperty property="singer" name="music02" value="라일락"/>
<jsp:setProperty property="start_year" name="music02" value="2021"/>
<body>
<h2 align="center"></h2>
<table>
	<col width="20%">
	<tr><th>타이틀:</th><h2><%=music.getTitle() %></h2></tr>
	<tr><th>가수:</th><h2><%=music.getSinger() %></h2></tr>
	<tr><th>발매년도:</th><h2><%=music.getStart_year() %></h2></tr>
	
	
	<tr><th>타이틀:</th><h2>${music01.title}</h2></tr>
	<tr><th>가수:</th><h2>${music01.singer}</h2></tr>
	<tr><th>발매년도:</th><h2>${music01.start_year}</h2></tr>
	
	
	<tr><th>타이틀:</th><h2></h2></tr>
	
	
	
	
	
</table>
</body>
</html>