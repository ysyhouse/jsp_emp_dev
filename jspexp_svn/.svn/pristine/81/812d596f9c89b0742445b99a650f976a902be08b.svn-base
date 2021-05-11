<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="team.a0_sjs.z01_vo.Product"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	Product p01 = new Product("딸기",2000,3);

//방법1
	Product product = new Product("사과",4000,5);
	
//방법2
	/*product.setProduct("사과");
	product.setPrice(3000);
	product.setCnt(5);*/	
	pageContext.setAttribute("pd", product);//이거 해줘야 el태그(${}) 사용가능함
	
	
%>

<h2>상품:<%=p01.getProduct() %></h2>
<h2>가격:<%=p01.getPrice()%></h2>
<h2>갯수:<%=p01.getCnt()%></h2>
<br/>

<h2>상품:${pd.product}</h2>
<h2>가격:${pd.price}</h2>
<h2>갯수:${pd.cnt}</h2>
</body>
</html>