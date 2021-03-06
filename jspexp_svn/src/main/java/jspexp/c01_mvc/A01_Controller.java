package jspexp.c01_mvc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A01_Controller
 */
@WebServlet(name = "mvc01.do", urlPatterns = { "/mvc01.do" })
public class A01_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;      
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A01_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// MVC 패턴의 핵심인 controller
		// # controller
		// 1. 요청값의 처리 : 해당 컨트롤러를 통해서 처리할 요청값을 받는다.
		//    /mvc01.do?name=홍길동&age=25&loc=서울신림동
		//    /mvc01.do?num01=25&num02=30
		String num01S = request.getParameter("num01");
		int num01=0;
		if(num01S!=null && !num01S.equals("")) 
			num01 = Integer.parseInt(num01S); // 문자열을 숫자로 변환처리
		String num02S = request.getParameter("num02");
		int num02=0;
		if(num02S!=null && !num02S.equals("")) 
			num02 = Integer.parseInt(num02S); // 문자열을 숫자로 변환처리		
		// 2. 모델 데이터 저장 : 비지니스 영역의 상태 정보 처리 - view단에 보낼 핵심데이터를
		//    저장 처리..
		request.setAttribute("sum", num01+num02); 
		// 모델데이터 sum을 선언하고 합산값    ${sum} 형식으로 view단에서 사용할 수 있다.
		// 3. View단 호출..
		String page = "a03_mvc\\a01_startMVC.jsp"; // 호출할 jsp 지정..
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		
		
		
		
		
	}

}
