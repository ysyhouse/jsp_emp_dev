<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,jspexp.z01_vo.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--
# 과제(team\a8_sjs\homework\0418.jsp)
1.[옵션] 클래스의 구성요소(생성자, 필드, 메소드) 사용법 확인
	순서 정리!!!!! 
2. Music 클래스(title, singer, year) VO 클래스 선언
	1) jsp scriptlet (<% %>으로 출력)
	2) el 출력 처리 (request.setAttribute() 활용)
	3) useBean을 활용하여 출력
3. 반복문과 조건문 사용
	0) jsp scriptlet, jstl의 기본 형식 선언
	1) jsp scriptlet <%%>, jstl 10~20까지 출력
	2) jsp scriptlet <%%> 로 100~80까지 출력
	3) jsp scriptlet <%%>, jstl 로 1~20 까지 짝수 출력
	4) jstl을 이용하여 ArrayList<Integer>  (request.setAttribute() 활용) 
		로 선언하여 물건의 가격을 할당하고, 테이블의 리스트로 출력
	
4. 요청값 처리
	1) 페이지?query string 의 기본 형식과 form 하위객체 name value와의 관계 정리
	2) 도서관에 가서 시스템 사용
		빌릴도서:
		대여기간:
		대여자: 
				[대출] --> 클릭 시 request.getParameter(), ${param.요청}
		
		처리결과를 출력

5. session scope의 범위를 useBean 을 이용해서 간단한 활용 예제를 처리하세요
	
		


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
		$("h2").text("0418 homework");
	});
</script>
</head>

<body>

<%--2-1,2
 <%
	Music mu = new Music("아이유","라일락",2021);
	pageContext.setAttribute("mu",mu);
%>

<table>
	<col width="20%">//scriptlet
	<tr><th>타이틀</th><td><%=mu.getTitle()%></td></tr>
	<tr><th>가수</th><td><%=mu.getSinger()%></td></tr>
	<tr><th>발매연도</th><td><%=mu.getYear() %></td></tr>
	
	//el
	<tr><th>타이틀</th><td>${mu.title}</td></tr>
	<tr><th>가수</th><td><%=mu.getSinger()%></td></tr>
	<tr><th>발매연도</th><td><%=mu.getYear() %></td></tr>
	
</table>

 --%>
	




<!-- 2-3번 -->
<%-- <jsp:useBean id="mu" class="jspexp.z01_vo.Music" scope="session"/>
<jsp:setProperty property="title" name="mu" value="음악제목임"/>
<jsp:setProperty property="singer" name="mu" value="가수"/>
<jsp:setProperty property="year" name="mu" value="2021"/>

<h2 align="center"></h2>
<table>
	<col width="20%">
	<tr><th>타이틀</th><td>${mu.title }</td></tr>
	<tr><th>가수</th><td>${mu.singer }</td></tr>
	<tr><th>발매연도</th><td>${mu.year }</td></tr>
	
</table> --%>

<!-- 3.0 
	<c:forEach var="변수명" begin="초기값" end="마지막값" step="증감단위"/>
	<c:forEach var="변수명" items="반복할배열객체" varStatus="sts"/>
	 	${변수명}
	 	${sts.count}
	 <c:if test="${조건문}">
	 </c:if>
	 <c:choose>
	 	<c:when test="${조건1}">
	 	</c:when>
	 	<c:when test="${조건2}">
	 	</c:when>
	 	<c:otherwise>
	 	
	 	</c:otherwise>
	 </c:choose>		

 -->

<%-- 3.1

 <%
	for(int cnt=10; cnt<=20; cnt++){
		
	
%>
<h1><%=cnt %></h1>
<%
	}
%> --%>
	
	
<%-- 3.2 

 <%
	for(int cnt=100; cnt>=80; cnt--){
		
	
%>
<h1><%=cnt %></h1>
<%
	}
%>  --%>



<%-- 3.3 
 <%
	for(int cnt=1; cnt<=20; cnt++){
		if(cnt%2==0){
			
		}
%>
<h1><%=cnt%></h1>
<%
	}
%> 
 --%>



<%-- <%
	for(int cnt=100; cnt>=80; cnt--){
		
		
	%>
	
		<font><%=cnt %></font>,
	<%
	}
	%>
	
	<br>
 --%>
	<!-- 3.3 방법1 -->
<%-- 	<%
	
		for(int cnt=2; cnt<=20; cnt+=2){
			
		
	%>
		<font><%=cnt %></font>
	<%
	
		}
	%>

 --%>
	<!-- 3.3 방법2 -->
<%-- 	<c:forEach var="cnt" begin="1" end="20" step="1">
	
		<c:if test="${cnt%2==0 }">2로나누었을때 0이되는것만 출력
			<font>${cnt }</font>,
		
		</c:if>
	</c:forEach>
 --%>
<!-- 3-4) jstl을 이용하여 ArrayList<Integer>  (request.setAttribute() 활용) 
		로 선언하여 물건의 가격을 할당하고, 테이블의 리스트로 출력
	 -->
	 
<%-- 	<%
		ArrayList<Integer> intList = new ArrayList<Integer>();
		intList.add(2500);
		intList.add(3000);
		intList.add(1000);
		intList.add(5000);
		intList.add(6000);
		request.setAttribute("plist", intList); 
	%>	 
	
	<c:forEach var="price" items="${plist }" varStatus="sts">
		<h2> ${sts.count }번째 가격${price }</h2>
	</c:forEach> --%>


<!-- 4. 요청값 처리
	1) 페이지?query string 의 기본 형식과 form 하위객체 name value와의 관계 정리 -->
	<!-- 	ex) location.href="buy.jsp?panme="사과"&price=2000&cnt=5";
			<form action="buy.jsp">
				<input type="text" name="pname" value="사과"/>
				<input type="text" name="price" value="2000"/>
				<input type="text" name="cnt" value="5"/>
			</form>
	 -->
	<!-- 
	2) 도서관에 가서 시스템 사용
		빌릴도서:
		대여기간:
		대여자: 
				[대출] 클릭 시 request.getParameter(), ${param.요청}
		처리결과를 출력 -->
<%-- 		<form action=""> 
<table>
	<col width="100%">
	<tr><th>빌린도서</th><td><%=request.getParameter("book") %></td></tr>
	<tr><th>대여기간</th><td>${param.period }</td></tr>
	<tr><th>대출자</th><td> ${param.person }</td></tr>
	<tr><td colspan="2"></td></tr>
</table>
</form> --%>


<!-- 5. session scope의 범위를 useBean 을 이용해서 간단한 활용 예제를 처리하세요	
		page : 변수나 객체를 선언한 페이지에서만 활용
		request : action태그나 rd.forward(request,response)
		session : 브라우저와 서버가 연결될떄까지 페이지 전환시 데이터를 가지고있다
		application: 서버가 종료되거나 재기동 될떄까지  데이터를 가지고있다
		
		
 -->
	


</body>
</html>