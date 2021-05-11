<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,jspexp.z01_vo.Music"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--
1. [옵션] 클래스의 구성요소(생성자, 필드, 메서드) 사용법 확인	
    순서정리. 
	 // 패키지명 위치
	package jspexp.z01_vo;
	// 클래스명  : 객체지향 프로그램에서는 클래스명을 대문자로 시작한다.
	public class Music {
		// 필드 = 클래스의 전역변수/상수
		// private : 접근제어자 - 외부에서 직접접근을 불가
		private String title;
		// 클래스명과 동일한 생성자.
		// Music m1 = new Music();
		public Music() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Music(String title) {
			// 생성자를 입력받아서 데이터를 초기화한다.
			// 리턴값이 없다.
			// Music m1 = new Music("즐거운 음악");
			this.title = title;
		}
		// m1.getTitle() : 데이터를 가져온다.
		public String getTitle() {
			return title;
		}
		//  기능 메서드 저장
		// 접근제어자 리턴값 메서드명(매개변수)
		// m1.setTitle("아름다운 음악");
		public void setTitle(String title) {
			this.title = title;
		}
		
	}
    
    
2. Music클래스(타이틀, 싱어, 발매년도) VO선언 

   1) jsp scriptlet(<%%>)으로 출력
   		import "패키지명.클래스명"
   2) el 출력 처리  request.setAttribute()활용
   3) useBean을 활용하열 출력
	 <%
	Music m01 = new Music("재미있는 음악");
	pageContext.setAttribute("m01",m01);
	%>
	<jsp:useBean id="m02" class="jspexp.z01_vo.Music"/>
	<jsp:setProperty property="title" name="m02" value="좋은 음악"/>
	<table>
		<col width="100%">
		<tr><th>타이틀</th></tr>
		<tr><td><%=m01.getTitle()%></td></tr>
		<tr><td>${m01.title}</td></tr>
		<tr><td>${m02.title}</td></tr>  
   
3. 반복문과 조건문 사용
   0) jsp scriptlet, jstl의 기본 형식 선언.
   		for( 초기값;반복조건;증감연산자){
   		
   		}
   		if( 조건1문 ){
   		}else if(조건2){
   		}else{}
   		<c:forEach var="변수명" begin="초기값" end="마지막값" step="증감단위">
   		<c:forEach var="변수명" items="반복할배열객체"   varStatus="sts">
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
   				
   			 		
   		</c:choose>	
   			
   1)

   2) jsp scriptlet(<%%>)으로 100~80까지 출력
   3) jsp scriptlet(<%%>), jstl 으로 1~20까지 짝수 출력
   4) jstl을 이용하여 ArrayList<Integer> request.setAttribute()활용
	로 선언하여 물건의 가격을 할당하고, 테이블의 리스트로 출력 
	처리
4. 요청값 처리
   1) 페이지?query string의 기본형식과 form 하위객체 name value와의
   	관계 정리
   		ex) location.href="buy.jsp?pname=사과&price=2000&cnt=5";
   			<form action="buy.jsp">
   				<input type="text" name="pname" value="사과"/>
   				<input type="text" name="price" value="2000"/>
   				<input type="text" name="cnt" value="5"/>
   				<input type="submit" value="구매" />
   	
   	
   	
   2) 도서관에 가서 시스템 사용
   	빌릴도서 : [     ]
	대여기간 : [     ]
	대여자 : [   ]
	      [대출] ==> 클릭시, 
	      request.getParameter(), ${param.요청}
	처리결과를 출력 처리
5. session scope 범위를 useBean을 이용해서 간단한 활용예제를 처리하세요
 	page : 변수나 객체를 선언한 페이지에서만 활용
 	request : action태그나 rd.forward( request, response)
 		통해서 요청값을 전달하는 범위까지 데이터를 처리.
 	session : 브라우저와 서버가 연결될 때까지 페이지 전환시 데이터를 가지고 있다.
 	application : 서버가 종료되거나 재기동 될까지 데이터를 가지고 있다.

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

<body>
<%--
${pagePerson.name}
${sessPerson.name}
${appPerson.name}
 --%>
<jsp:useBean id="pagePerson" class="jspexp.z01_vo.Person" scope="page"/>
<jsp:setProperty property="name" name="pagePerson" value="홍길동(페이지)"/>
<jsp:useBean id="sessPerson" class="jspexp.z01_vo.Person" scope="session"/>
<jsp:setProperty property="name" name="sessPerson" value="홍길동(세션)"/>
<jsp:useBean id="appPerson" class="jspexp.z01_vo.Person" scope="application"/>
<jsp:setProperty property="name" name="appPerson" value="홍길동(어플리케이션)"/>
<h3>세션범위</h3>
${pagePerson.name}<br>
${sessPerson.name}<br>
${appPerson.name}<br>
<a href="0418_1.jsp">페이지 이동</a>
<h2 align="center"></h2>
<%
Music m01 = new Music("재미있는 음악");
pageContext.setAttribute("m01",m01);
%>
<jsp:useBean id="m02" class="jspexp.z01_vo.Music"/>
<jsp:setProperty property="title" name="m02" value="좋은 음악"/>
<table>
	<col width="100%">
	<tr><th>타이틀</th></tr>
	<tr><td><%=m01.getTitle()%></td></tr>
	<tr><td>${m01.title}</td></tr>
	<tr><td>${m02.title}</td></tr>
	
</table>
<%--
   2) jsp scriptlet(<%%>)으로 100~80까지 출력
   3) jsp scriptlet(<%%>), jstl 으로 1~20까지 짝수 출력
   4) jstl을 이용하여 ArrayList<Integer> request.setAttribute()활용
	로 선언하여 물건의 가격을 할당하고, 테이블의 리스트로 출력 
	처리
 --%>
	<%
		for(int cnt=100;cnt>=80;cnt--){
	%>
		<font><%=cnt%></font>, 
 	<%
		}
 	%>
 	<br>
 	<%
 		for(int cnt=2;cnt<=20;cnt+=2){
 	%>
 		<font><%=cnt%></font>, 
 	<%
 		}
 	%><br>
 	<c:forEach var="cnt" begin="1" end="20" step="1">
 		<c:if test="${cnt%2==0}"><%-- 2로 나누었을 때, 0이 되는 것만 출력. --%>
 			<font>${cnt}</font>, 
 		</c:if>
 	</c:forEach>
 	<%
 	ArrayList<Integer> intList = new ArrayList<Integer>();
 	intList.add(2500);
 	intList.add(3000);
 	intList.add(1000);
 	intList.add(5000);
 	intList.add(6000);
 	request.setAttribute("plist",intList );
 	%>
 	<c:forEach var="price" items="${plist}" varStatus="sts">
 		<h3>${sts.count}번째 가격 ${price}</h3>
 	</c:forEach>
</body>
</html>