<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="team.a05_lbm.z01_vo.Product" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
		<%
		Product p01 = new Product("사과",3000,2);
		Product p02 = new Product("바나나",4000,3);
		
		pageContext.setAttribute("p02", p02); //el태그를 활용할 수 있음 
		
		
		%>
    <h2> 물건명 : <%=p01.getName() %> </h2>
	<h2> 가격 : <%=p01.getPrice() %> </h2>
	<h2> 갯수 : <%=p01.getCnt() %> </h2>
    <h2> 물건명 : ${p02.name}  </h2>
    <h2> 가격 : ${p02.price} </h2>
	<h2> 갯수 : ${p02.cnt} </h2>

</body>
</html>