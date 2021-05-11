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

<%-- #구매물품 계산 
form 하위에
물건명:[]
가격:[]
갯수:[] 

submit누르면 ~을~개 구매하여 총 비용은 ~입니다. 출력

 --%>

<body>
<h2 align="center"></h2>
<form>
<table>
	<col width="10%">
	<tr><th>물건명:</th><td><input type="text" name="product"></td></tr>
	<tr><th>수량:</th><td><input type="text" name="cnt"></td></tr>
	<tr><th>가격:</th><td><input type="text" name="price"></td></tr>
	<tr><td colspan="2"><input type="submit" name="total"></td></tr>
	
	
	
</table>
</form>

<%--jstl의 조건문 ${empty param.name} :요청키가 name에 해당값이 없을때 
${not empty param.name} :요청키가 name에 해당값이 있을때

 --%>
<c:if test="${not empty param.product }">
<h3> ${param.product}를 ${param.cnt}개 구매하여 가격은 ${param.price * param.cnt }입니다.</h3>

</c:if>
</body>
</html>