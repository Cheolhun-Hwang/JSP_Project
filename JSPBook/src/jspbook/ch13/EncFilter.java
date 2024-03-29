package jspbook.ch13;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebListener;
@WebFilter("*.jsp")
/**
 * Application Lifecycle Listener implementation class EncFilter
 *
 */
@WebListener
public class EncFilter implements Filter {
	
	private String encoding = null;

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		if(req.getCharacterEncoding() == null) {
			req.setCharacterEncoding("utf-8");
			chain.doFilter(req, res);
		}
	}

	@Override
	public void init(FilterConfig fconfig) throws ServletException {
		// TODO Auto-generated method stub
		this.encoding = fconfig.getServletContext().getInitParameter("utf-8");
	}

	
	
	
}
