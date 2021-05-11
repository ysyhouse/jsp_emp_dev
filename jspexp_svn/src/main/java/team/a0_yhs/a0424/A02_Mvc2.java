package team.a0_yhs.a0424;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A02_Mvc2
 */
@WebServlet(name = "mvc02", urlPatterns = { "/mvc02" })
public class A02_Mvc2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A02_Mvc2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1. 요청값.
		//    /mvc02?point=70
		String pointS = request.getParameter("point");
		int point = 0;
		if(pointS!=null&& !pointS.equals("")) point= Integer.parseInt(pointS);
		// 2. 모델데이터 처리   point>=70이상이면 합격 그외는 불합격
		//     
		if(point>=70) {
			request.setAttribute("pass", "합격");
		}else {
			request.setAttribute("pass", "불합격");
		}
		// 3. view단 호출..
		//      점수는 @@@점   합격/불합격
		String page= "team\\a0_yhs\\exp01\\0424_01.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		
	}

}
