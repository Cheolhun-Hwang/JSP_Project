package jspbook.ch13;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class TestContextListener
 *
 */
@WebListener
public class TestContextListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public TestContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    	System.out.println("TestContextListener 종료되었습니다.");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent arg0)  { 
         // TODO Auto-generated method stub
    	ServletContext ctx = arg0.getServletContext();
    	Book mybook = new Book("자바 웹 프로그래밍", "황희정", 20000, "한빛미디어");
    	ctx.setAttribute("book", mybook);
    	System.out.println("TestContextListener 초기화되었습니다.");
    }
	
}
