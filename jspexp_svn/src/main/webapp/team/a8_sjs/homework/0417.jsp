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
1. jsp프로그래밍을 위한 툴 설치 순서와 설정 방법에 대하여 기술하세요
	1) jdk oracle홈페이지에서 jdk.1.8설치 -> java build path에서 설정
	2) eclipse : 환경 설정
	3) svn : 1) showview->other->svn->svn repositories -> 창 우클릭->new->repository location-> url추가 -> id,pw입력 
	(marketplace에서 subclipse설치함)
	4) tomcat 8.0 설치 (eclipse marketplace설치가능) 
2. jsp에서 일반 application프로그래밍과 달리 scope를 설정한다
	이 scope가 무엇인지 scope의 범위에 대하여 기술하세요
	scope: 변수나 페이지나 서버와의 관계속에서 지속되는 범위를 설정하는 것을 말한다
	
Application : 웹 어플리케이션이 시작되고 종료될 때까지 변수가 유지되는 경우 사용
Session : 웹 브라우저 별로 변수가 관리되는 경우 사용, 해당 객체가 생성되서 소멸될 때까지 계속 사용 가능 
Request : http요청을 WAS가 받아서 웹 브라우저에게 응답할 때까지 변수가 유지되는 경우 사용
Page : 페이지 내에서 지역변수처럼 사용
	
	 scope 범위는 1.page < 2.request < 3.session < 4.application 순
	 
	 

3. jsp 프로그램을 start.jsp를 만들었따. WAS에서 처리되는 순서를 기술하세요

@@@.jsp ==> @@Servelt.java(서블릿프로그램변경)
		 ==> @@@servlet.class ==> WAS에서 메모리 로딩 실행할 때, 
		 HttpServeltResponse객체에서 getWriter()를 통해서 PrintWriter객체를 생성
		 ==> out.println("화면으로 출력할 내용")을 client에 
		 최종결과물은 html코드를 stream으로 전달한다.!!!!
		 
		 
4. client단 프로그램으로 http://192.168.0.12:7080/jspexp/a01_basic/start.jsp라고 호출하였다.
Dynamic web project 생성 폴드 기준으로 실제 호출 되는 파일 경로를 기술하세요.

프로젝트명(context명)jspexp\src\main\webapp\jsp 로딩 기본 위치


5. jsp 에서 MVC란 무엇인지? 약어 위주로 기술하세요

Model : 백그라운드에서 동작하는 로직을 처리합니다.

View : 사용자가 보게 될 결과 화면을 출력합니다.

Controller : 사용자의 입력처리와 흐름 제어를 담당합니다.


6. 0417.jsp?product=사과&price=3000&cnt=5를 요청하여 화면에 물건명 @@@ 가격 : @@@ 갯수 @@@형식으로 출력하세요




 --%>
 <%
 	String product = request.getParameter("product");
 	int price = Integer.parseInt(request.getParameter("price"));
 	int cnt = Integer.parseInt(request.getParameter("cnt"));
 	
 %>
 <h1>물건명:<%=product %> 가격: <%=price %> 갯수:<%=cnt %></h1>
</body>
</html>