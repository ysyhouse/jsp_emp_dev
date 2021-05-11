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
		$("h2").text("jstl반복문");
	});
</script>
</head>

<body>
<h2 align="center"></h2>
<%--
# jstl반복 구문
1. 카운트 처리
	<c:forEach var="반복으로 사용할 변수" 
		begin="시작할변수" end="마지막변수" step="증가단위">
		반복할 내용 ${cnt}
	</c:forEach>
2. 배열 데이터 처리.
	<c:forEach var="data" items="${배열형데이터}" varStatus="sts">
		${sts.index} :인덱스
		${sts.count} :카운트
		${data} :배열의 단위데이터 변수.
		${sts.start}
		${sts.end}
		
	</c:forEach>
 --%>
<%
	// ArrayList<데이터유형>
	ArrayList<String> fruits = new ArrayList<String>();
	fruits.add("사과");
	fruits.add("바나나");
	fruits.add("딸기");
	request.setAttribute("fruits", fruits);
	
%> 
<%-- for(int cnt = 1; cnt<=10;cnt+=2) --%>
<c:forEach var="cnt" begin="1" end="10" step="2"> 
	<h3 align="center">${cnt}번째 안녕하세요!!</h3>
</c:forEach>
<table>
	<col width="20%">
	<tr><th>번호</th><th>과일명</th></tr>
	<%--
		for(String fruit:fruits)
			fruit
	 --%>
	<c:forEach var="fruit" items="${fruits}" varStatus="sts">
		<tr><td>${sts.count}</td><td>${fruit}</td></tr>
	</c:forEach>
</table>
<%--
ex1) 번호를 20~30까지  h4로 출력
ex2) 배열변수로 도서명3개를 선언하고 forEach를 통해서 출력 처리..
 --%>
<c:forEach var = "cnt" begin="20" end="30" step="1"> 
<h4 align="center">번호 ${cnt}</h4> 
 </c:forEach>
<%
	ArrayList<String> blist = new ArrayList<String>();
	blist.add("자바 기초");
	blist.add("jsp 프로그래밍 응용");
	blist.add("스프링 실무 예제");
	request.setAttribute("blist", blist);
%> 
<table>
	<col width="20%">
	<tr><th>번호</th><th>도서명</th></tr>
	<c:forEach var="book" items="${blist}" varStatus="sts">
		<tr style="background-color:${sts.first?'yellow':''};
				   color:${sts.last?'blue':''};"><td>
		${sts.count}:
		${sts.index}:
		${sts.first}: <%-- 시작 데이터 인지 여부 boolean --%>
		${sts.last} <%-- 마지막 데이터 인지 여부 boolean --%>
		
			</td><td>${book}</td></tr>
	</c:forEach>
</table>	
</body>
</html>