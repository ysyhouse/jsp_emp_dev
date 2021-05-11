<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%-- 
 ex) 요청값 처리 예제
 http://localhost:7080/jspexp/team/a0_yhs/exp01/0417_02.jsp
 0417_02.jsp?reg_member=himan
 해당 id가 himan이면 등록된 회원입니다. 출력 
 그외에는 @@는 등록가능한 아이디입니다. 출력...!
  --%>
  
  <%
  	String id = request.getParameter("id");  
  
  if(id.equals("himan")){ %>
  
  <h2> <%=id%>는 이미 등록된 회원입니다. </h2>
  
  <%}
 else{%> <%=id%>는 등록가능한 회원입니다. <% }%>
  
  	
  	
	   
	   
</body>
</html>