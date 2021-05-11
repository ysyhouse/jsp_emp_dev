package team.a0_sjs;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class a0424
 */
@WebServlet("/a0424")
public class a0424 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public a0424() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//1.요청값
		//mvc02?point=70
		int point = Integer.parseInt(request.getParameter("point"));
		String pass ="";
		if(point >= 70) {
			pass = "합격";
		}else {
			pass ="불합격";
		}
		request.setAttribute("Pass", pass);
		
		//2.모델데이터 처리 point>=70 이상이면 합격, 그외에는 불합격
		//	request.setAttribute("Pass",@@@@);
		//3. view단 호출
		String page ="team\\a8_sjs\\0424_01.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
		
	}

}
