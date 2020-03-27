import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test/getData")
public class CORS extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String allowOrigin=request.getParameter("allowOrigin");
		if("true".equals(allowOrigin))
			setAccessControlHeaders(response);
		response.getWriter().append("Get method");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String allowCredentials = request.getParameter("allowCredentials");
		String allowHeaders = request.getParameter("allowHeaders");
		if("true".equals(allowHeaders))
			response.setHeader("Access-Control-Allow-Headers", "content-type");
		if("true".equals(allowCredentials))
			response.setHeader("Access-Control-Allow-Credentials", "true");
		setAccessControlHeaders(response);
		response.getWriter().append("Post method");
	}

	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setHeader("Access-Control-Allow-Methods", "PUT");
		setAccessControlHeaders(response);
		response.getWriter().append("Put method");
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.getWriter().append("Delete method");
	}

	protected void doHead(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		setAccessControlHeaders(response);
		response.getWriter().append("Head method");
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
		
		setAccessControlHeaders(response);
		response.getWriter().append("Options method");
	}

	protected void doTrace(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.getWriter().append("Trace method");
	}
	
	private void setAccessControlHeaders(HttpServletResponse response)
	{
		response.setHeader("Access-Control-Allow-Origin", "http://localhost:8080"); 
	}
}
