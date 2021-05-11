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
  1) jdk
     - cmd 창에서 java -version 명령을 통해 설치 여부를 확인한 후 설치가 되어 있지 않을 경우
       자바 사이트에서 jdk1.5 버전으로 다운로드 받아서 설치 cmd 창에서 java -version 명령을 통해 설치 여부 확인
  2) eclipse
     - 웹 사이트에서 다운로드 받아서 설치를 시작. 설치가 완료된 후 설정 창에서 한들 encoding 설정을 utf-8로 변경(workspace,html,jsp,css)
  3) svn
     - help - eclipse marketplace를 통해 svn를 검색하여 설치
     - window - show view - other - svn - svn repositories 를 선택하면 화면 하단에 추가
     - 연락를 원하는 svn 서버의 주소와 정보를 입력하여 연결
  4) tomcat
     - server 를 선택하여 사용하고자하는 버전(tomcat 8.0)의 선택하여 설치
     - 해당 프로젝트를 추가하고 사용하는 포트를 지정하여 스타트 시킴 
 
2. jsp에서 일반 application 프로그래밍에 달리 scope를 설정한다. 이 scope가 무엇인지 scope의 범위에 대하여 기술하세요.
   - page : 실제 선언된 JSP 페이지 내에서만 사용할 수 있는 것. 페이지 내에서 지역변수처림 사용
   - request : 클라이언트로부터 하나의 요청이 들어와서 서버가 일을 수행한 후 응답을 보낼 때까지 계속 사용할 수 있는 것
   - session : session 객체가 생성되고 소멸될 때까지 request는 하나의 요청과 응답이 나갈때까지이지만, session scope은
               session 객체가 만들어져서 소멸될때까지이므로 하나가 아닌 여러개의 요청이 들어와도 계속 남아있다.
   - application : 하나의 application이 생성되어 소멸될때까자 계속 유지. eclipse에서 하나의 프로젝트가 하나의 application이라고 생각하면 되고, 하나의
                   서버에는 여러개의 web application이 존재할 수 있다.

3. jsp 프로그램을 start.jsp를 만들었다. WAS에서 처리되는 순서를 기술하세요.
   - 웹서버를 통해 전달된 값이 웹어플리케이션에 의해 처리되어 다시 웹서버를 통해 사용자에서 전달됨

4. client단 프로그램으로 http://192.168.0.12:7080/jspexp/a01_basic/start.jsp라고 하출하였다. 
   Dynamic web project 생성 폴드 기준으로 실체 호출되는 파일 경로를 기술하세요.
   - workspace디렉토리/jspexp/a01_basic/
   
5. jsp에서 MVC란 무엇인지? 약어 위주로 기술하세요.
   - model view controller
6. 0417.jsp?product=사과&price=3000&cnt=5를 요청하여 화면에 물건명 @@@ 가격 @@@ 갯수 @@@ 형식으로 출력 처리하세요. 
--%>

<%
String product = request.getParameter("product");
String price = request.getParameter("price");
String cnt = request.getParameter("cnt");
%>

<h2>물건명 <%=product%>, 가격 <%=price%>, 갯수 <%=cnt%></h2>
</body>
</html>