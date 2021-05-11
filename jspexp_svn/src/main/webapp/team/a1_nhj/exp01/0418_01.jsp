<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "jspexp.z01_vo.Product"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
개인폴드 vo패키지에 Product 물건명 가격 갯수 객체 선언
화면에 해당내용 출력 처리.
 --%>
<%
String name = "사과";
int price = 3000;
int cnt = 3;


Product p01 = new Product("사과", 2000, 2);

Product p02 = new Product();
p02.setName("딸기");
p02.setPrice(4000);
p02.setCnt(4);
pageContext.setAttribute("p03", p02);

Product a01 = new Product("바나나", 5000, 5);
pageContext.setAttribute("a01", a01);
%>

	<h2>물건명 : <%=p01.getName()%></h2>
	<h2>가격 : <%=p01.getPrice()%></h2>
	<h2>갯수 : <%=p01.getCnt()%></h2>
	<hr>
	<h2>물건명 : ${p03.name}</h2><!-- el태그로 <%=p02.getName()%> 동일 -->
	<h2>가격 : ${p03.price}</h2>
	<h2>갯수 : ${p03.cnt}</h2>
	<hr>
	<h2>물건명 : ${a01.name}</h2>
	<h2>가격 : ${a01.price}</h2>
	<h2>갯수 : ${a01.cnt}</h2>

</body>
</html>