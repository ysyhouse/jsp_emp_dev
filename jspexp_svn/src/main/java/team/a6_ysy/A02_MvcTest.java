package team.a6_ysy;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A03_MvcTest
 */
@WebServlet(name = "A02_Mvc.do", urlPatterns = { "/A02_Mvc.do" })
public class A02_MvcTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A02_MvcTest() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String point = request.getParameter("point");
		
		if(point !=null && !point.equals(null)) {
			
			 int result=Integer.parseInt(point);
			 String page="team\\a6_ysy\\exam\\exp01\\0424_01.jsp";
			 
			 
			 
			 if(result >=70) {
				 request.setAttribute("result","합격");
				 
				 
			 }
			 else {
				 
				 request.setAttribute("result","불합격");
			 }
			 RequestDispatcher rd= request.getRequestDispatcher(page);
			 rd.forward(request, response);
		}
		
		
		
		
	}
	
	
	

}
