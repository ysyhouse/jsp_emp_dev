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
# useBean의 활용.
1. 객체를 el로 효과적으로 활용하기 위한 목적.
	- scope에 따른 처리 session으로도 처리 가능..
2. 요청값을 자동으로 객체할당 처리.
3. 기본 형식
	1) 선언 
		<jsp:useBean id="객체참조" class="패키명.클래스명" 
			scope="session범위"/>
		객체 jsp안에서 생성효과를 가진다.
			Person p = new Person();
	2) setProperty로 해당 객체의 데이터 할당.
		<jsp:setProperty name="객체참조" property="set메서드명" 
			value="할당데이터"/>
			p.setName("홍길동")
	3) getProperty로 해당 객체에 메서드로 호출 처리.
		<jsp:getProperty name="객체참조" property="get메서드명"/>
			p.getName();	
	4) 요청값이 있으면, 받는 페이지에서 useBean 선언되어있고,
		해당 객체의 property가 요청key와 동일한 type과 이름이면
		setProperty name="*"로 처리하면 자동으로 해당객체에 할당이 된다.
					

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
		$("h2").text("useBean");
	});
</script>
</head>

<body>
<h2 align="center"></h2>
<jsp:useBean id="m01" class="jspexp.z01_vo.Member" scope="session"/>
<%-- Member m01 = new Member() --%>
<jsp:setProperty name="m01" property="id" value="himan" />
<jsp:setProperty name="m01" property="name" value="홍길동" />
<jsp:setProperty name="m01" property="auth" value="admin" />
<%-- m01.setId("himan") --%>
<table>
	<col width="20%">
	<tr><th>아이디</th><td><jsp:getProperty property="id" name="m01"/></td></tr>
	<tr><th>이름</th><td><%=m01.getName()%></td></tr>
	<tr><th>권한</th><td>${m01.auth}</td></tr>
</table>
<table>
	<col width="20%">
	<tr><th>아이디</th><td>${m01.id}</td></tr>
	<tr><th>이름</th><td>${m01.name}</td></tr>
	<tr><th>권한</th><td>${m01.auth}</td></tr>
</table>
<a href="a08_show.jsp">다음 페이지 이동</a>
<h3>폼으로 데이터 전송</h3>
<form action="a08_show.jsp">
<table>
	<col width="20%">
	<tr><th>아이디</th><td><input type="text" name="id"/></td></tr>
	<tr><th>이름</th><td><input type="text" name="name"/></td></tr>
	<tr><th>권한</th><td><input type="text" name="auth"/></td></tr>
	<tr><td colspan="2"><input type="submit" value="전송"/></td></tr>
</table>
</form>

</body>
</html>