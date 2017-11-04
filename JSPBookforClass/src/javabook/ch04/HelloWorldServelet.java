package javabook.ch04;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorldServelet
 */
@WebServlet(description = "처음 만드는 서블릿", urlPatterns = { "/HelloWorldServelet" })
public class HelloWorldServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public HelloWorldServelet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html;charset=utf-8");
		
		//ex) naver ? 뒤가 파라메타   고로  
		//String query= request.getParameter("query").toString();
		//이외 같은 방법으로 파라메타의 값을 얻을 수 있다.
		
		Date date = new java.util.Date();
		String date_String = date.getYear() + " - " + date.getMonth() + " - "+ date.getDay();
		
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD><TITLE>Hello World Servelet</TITLE></HEAD>");
		out.println("<BODY><H2>Hello World Servlet : "+ date_String + "</H2></BODY>");
		out.println("</HTML>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
