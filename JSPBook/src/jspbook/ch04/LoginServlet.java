package jspbook.ch04;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(description="login", urlPatterns="/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LoginServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id, passwd;
		
		//������ �䰡 �ѱ��϶� ���� ���� ���� �ѱ��� ���´�
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		id = request.getParameter("id");
		passwd = request.getParameter("passwd");
		
		if(id.equals("hong") && passwd.equals("1234")){
			out.println("<HTML>");
			out.println("<HEAD><TITLE>����</TITLE></HEAD>");
			out.println("<BODY>");
			out.println("<H2>�����</H2>");
			out.println("<HR>");
			out.println(id + "�� ȯ���մϴ�.");
			out.println("</BODY>");
			out.println("</HTML>");
		}
	}

}
