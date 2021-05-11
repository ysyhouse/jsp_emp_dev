package jspexp.a01_servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A01_ServletStart
 */
@WebServlet(name = "start.do", urlPatterns = { "/start.do" })
public class A01_ServletStart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A01_ServletStart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// jsp ==> servlet으로 변환 되어 화면에 출력할 내용을 아래와 같은
		// 형식으로 처리하여야 한다.
		// 1. 요청
		// 2. 넘겨질 모델데이터
		// 3. 화면 처리 (response)
		response.setContentType("text/html;");
		response.getWriter().print("<h2>hi!! servlet!! show</h2>");
	}

}
