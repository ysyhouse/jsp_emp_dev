<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,jspexp.z01_vo.*"
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
<%-- 
#과제
1. [옵션]클래스의 구성요소(생성자, 필드, 메서드) 사용법 확인
	순서정리. 
2. Music클래스(타이틀, 싱어, 발매년도) VO선언
	1) jsp scriptlet <%%> 으로 출력
	2) el태그로 출력 처리 request.setAttrivute()활용
	3) useBean을 활용하여 출력
3. 반복문과 조건문 사용
	0) jsp scriptlet, jstl의 기본 형식 선언.
	1) jsp scriptlet(<%%>), jstl 으로 10에서 20까지 출력
	2) jsp scriptlet(<%%>), jstl 으로 100에서 80까지 출력
	3) jsp scriptlet(<%%>), jstl 으로 1에서 20까지 짝수 출력
	4) jstl을 이용하여 ArrayList<Integer>request.setAttrivute()활용
		로 선연하여 물건의 가격을 할당하고, 테이블의 리스트로 출력 처리
4. 요처값 처리
	1) 페이지 ?query string의 기본형식과 form 하위객체 name value관계 정리
	2) 도서관에서 가서 시스템 사용
		빌릴도서 : []
		대여기간 : []
		대여자 : []
		[대출]==>클릭시 , 
		request.getParameter 처리, ${param.요청}
		처리결과를 출력 처리
5. session scope 범위를 useBean을 이용해서 간단한 활용 예제를 처리하세요.
--%>
<body>
<h2 align="center"></h2>
<jsp:useBean id="m01" class="jspexp.z01_vo.Music" scope="session" />
<%-- Member m01 = new Member() --%>
<jsp:setProperty property="title" name="m01" value="봄날"/>
<jsp:setProperty property="singer" name="m01" value="방탄"/>
<jsp:setProperty property="year" name="m01" value="2020"/>
2. Music클래스(타이틀, 싱어, 발매년도) VO선언
<table>
	<col width="10%">
	<tr><th>타이틀</th><td><jsp:getProperty property="title" name="m01"/></td></tr>
	<tr><th>싱어</th><td><%=m01.getSinger() %></td></tr>
	<tr><th>발매년도</th><td>${m01.year}</td></tr>
</table>
<table>
	<col width="10%">
	<tr><th>아이디</th><td>${m01.title}</td></tr>
	<tr><th>싱어</th><td>${m01.singer}</td></tr>
	<tr><th>발매년도</th><td>${m01.year}</td></tr>
</table>
<hr>
3. 반복문과 조건문 사용
<br>1) jsp scriptlet(<%%>), jstl 으로 10에서 20까지 출력
<%
for (int cnt=10; cnt <=20 ; cnt++){
%>
<br><%=cnt %>번째 숫자
<%
}
%>
<hr>
2) jsp scriptlet(<%%>), jstl 으로 100에서 80까지 출력
<%
for (int cnt=100; cnt >=80 ; --cnt){
%>
<br><%=cnt %>번째 숫자
<%
}
%>
<hr>
3) jsp scriptlet(<%%>), jstl 으로 1에서 20까지 짝수 출력
<%
for (int cnt=2; cnt <= 20 ; cnt=cnt+2){
%>
<br><%=cnt%>번째 숫자
<%
}
%>
<hr>
4) jstl을 이용하여 ArrayList
<%
ArrayList<String> list = new ArrayList<String>();
list.add("1000");
list.add("2000");
list.add("3000");
request.setAttribute("list", list);
%>
<table>
	<col width="10%">
	<tr><th>번호</th><th>가격</th></tr>
	<c:forEach var="list"  items="${list}" varStatus="sts" >
	<tr style="background-color:${sts.first?'yellow':''}; color:${sts.last?'blue':''}">
		<td>${sts.count}</td>
		<td>${list}</td></tr>
	</c:forEach>
	
</table>
<hr>4. 요처값 처리
<form method="post">
<table>
	<col width="10%">
	<tr><th>빌릴도서</th><td><input type="text" name="book_nm"/></td></tr>
	<tr><th>대여기간</th><td><input type="text" name="date"/></td></tr>
	<tr><th>대여자</th><td><input type="text" name="rent_nm"/></td></tr>
	<tr><td colspan="2"><input type="submit" value="대출"/></td></tr>

	
</table>
</form>
<h4 align="center">
	빌릴도서 : ${param.book_nm}
	대여기간 : ${param.date} 
	대여자 :${param.rent_nm} 
	<br>
	${param.rent_nm}님 ${param.book_nm}를 ${param.date}날짜 대출 내역입니다.
</h4>
<hr>session scope 범위를 useBean을 이용해서 간단한 활용 예제를 처리하세요.
<jsp:useBean id="m02" class="jspexp.z01_vo.Music" scope="session" />
<%-- Member m01 = new Member() --%>
<jsp:setProperty property="title" name="m02" value="라라라"/>
<jsp:setProperty property="singer" name="m02" value="SG워너비"/>
<jsp:setProperty property="year" name="m02" value="1999"/>
<jsp:setProperty property="genre" name="m02" value="발라드"/>



<table>
	<col width="10%">
	<tr><th>타이틀</th><td><jsp:getProperty property="title" name="m02"/></td></tr>
	<tr><th>싱어</th><td><%=m02.getSinger() %></td></tr>
	<tr><th>장르 추가</th><td>${m02.genre}</td></tr>
	<tr><th>발매년도</th><td>${m02.year}</td></tr>
</table>

</body>
</html>