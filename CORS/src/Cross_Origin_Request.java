import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test/getData")
public class Cross_Origin_Request extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String allowOrigin=request.getParameter("allowOrigin");
		System.out.println(allowOrigin);
		if("true".equals(allowOrigin))
			response.setHeader("Access-Control-Allow-Origin", "http://localhost:8080"); 
		if("null".equals(allowOrigin))
		{
			System.out.println("testssss");
			response.setHeader("Access-Control-Allow-Origin", "null"); 
		}
		response.getWriter().append("{email: 'test1@test.com'}");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String allowCredentials = request.getParameter("allowCredentials");
		String allowHeaders = request.getParameter("allowHeaders");
		if("true".equals(allowHeaders))
			response.setHeader("Access-Control-Allow-Headers", "content-type");
		if("true".equals(allowCredentials))
			response.setHeader("Access-Control-Allow-Credentials", "true");
		
		response.setHeader("Access-Control-Allow-Origin", "http://localhost:8080"); 
		response.getWriter().append("{email: 'test2@test.com'}");
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setHeader("Access-Control-Allow-Methods", "PUT");
		response.setHeader("Access-Control-Allow-Origin", "http://localhost:8080"); 
		response.getWriter().append("{email: 'test3@test.com'}");
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.getWriter().append("{email: 'test1@test.com'}");
	}

	protected void doHead(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setHeader("Access-Control-Allow-Origin", "http://localhost:8080"); 
		response.getWriter().append("{email: 'test4@test.com'}");
	}

	protected void doOptions(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String allowHeaders=request.getParameter("allowHeaders");
		String allowMethods=request.getParameter("allowMethods");
		String allowCredentials = request.getParameter("allowCredentials");
		
		String header=request.getHeader("Access-Control-Request-Headers");
		String method=request.getHeader("Access-Control-Request-Method");
		
		if("true".equals(allowHeaders))
			response.setHeader("Access-Control-Allow-Headers", header);
		if("true".equals(allowMethods))
			response.setHeader("Access-Control-Allow-Methods", method);
		if("true".equals(allowCredentials))
			response.setHeader("Access-Control-Allow-Credentials", "true");
		
		response.setHeader("Access-Control-Allow-Origin", "http://localhost:8080"); 
		response.getWriter().append("Options method");
	}
}
