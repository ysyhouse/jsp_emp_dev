<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- html 태그 주석(client단에서 확인가능) -->
<%--
	jsp 프로그래밍 주석(client단에서 확인불가능)
 --%>
<%--
# jsp프로그래밍에서 server와 client단에 대한 이해..
1. 초기 was서버 설정과 소스 저장.
	Tomcat이 7080포트로 기동
	다이나믹 프로젝트로 연동처리.
	프로젝트명(context명)\src\main\webapp\jsp로딩 기본위치
	프로젝트명(context명)\src\자바소스 기본위치.
2. tomcat 기동시 url 주소와 소스호출 위치
	http://localhost:7080/jspexp
		프로젝트의 context명의 위치가 기본 웹프로그램(jsp/html)의 기본 위치
		물리적으로 프로젝트명(context명)\src\main\webapp 와 동일
		
	http://localhost:7080/jspexp
		/a01_basic/a01_webStart.jsp
3. jsp프로그램의 처리 순서(서버)
	@@@.jsp ==> @@Servlet.java(서블릿프로그램변경) 
	==> @@@servlet.class ==> WAS에서 메모리 로딩 실행할 때,
	HttpServletResponse에서 getWriter()를 통해서 PrintWriter객체를 생성
	out.println("화면으로 출력할 내용")를 client에 
	최종결과물은 html코드를 stream으로 전달한다.
	
 --%>
 	<%
 	// scriptlet  자바프로그램 선언/반복문/조건문 처리.
 	String name="홍길동";
 	%>
  
	<h2>안녕하세요(위치 확인)<%=name%></h2> 
	<%-- <%=변수명%> : expression 주로 출력시 사용--%>
	
	
	
</body>
</html>