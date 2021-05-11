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
	1.jsp프로그래밍을 위한 툴 설치 순서와 설정 방법에 대해 기술하시요.
	1)jdk
	2)eclipse환경 설정
	3)svn
	4)tomcat
	
	2.jsp에서 일반 application 프로그래밍과 달리 scope를 설정한다.
	이 스코프의 범위에 대해 기술하시오.
	
	3.jsp프로그램에서 start.jsp를 만들었다.  was에서 처리순서를 기술하시오.
	
	
	4.client단 프로그램으로 
	http://192.168.0.12:7080/jspexp/a01_basic/strart.jsp라고 호출하엿다. 생성 폴더 기준으로 실제 호출되는 파일 경로를 기술하시오
	=>jspexp\src\main\webapp\a01_basic\start.jsp
	
	5.jsp에서 MVC란 무엇인가
	
	6.0417.jsp?product=사과&price=3000&cnt=5를 요청하는 화면과 출력처리하세요.

 --%>
 
 <% String product=request.getParameter("product"); 
 	String price = request.getParameter("price");
 	String cnt=request.getParameter("cnt");
 	
 	
 %>
 
 <h3><%=product %>는<%=price %>원이고 <%=cnt %> 개 까지 살 수 있습니다.</h3>
</body>
</html>