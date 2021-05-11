<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="team.a0_yhs.z01_vo.Product"    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
개인폴드 vo 패키지에 
Product 물건명 가격 갯수 객체 선언.
화면에 해당내용 출력 처리.
 --%>
<%
	Product p01 = new Product("사과",3000,2);
	Product p02 = new Product("바나나",4000,3);
	// ctrl+space
	pageContext.setAttribute("p02", p02);
%>
	<h2>물건명:<%=p01.getName()%></h2>
	<h2>가격:<%=p01.getPrice()%></h2>
	<h2>갯수:<%=p01.getCnt()%></h2>
	<h3>물건명:${p02.name}</h3>
	<h3>가격:${p02.price}</h3>
	<h3>갯수:${p02.cnt}</h3>
 
 
</body>
</html>