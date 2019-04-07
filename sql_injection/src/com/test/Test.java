package com.test;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test")
public class Test extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		try
		{
			String id=request.getParameter("id");
			List list = FetchData.patched(id);
			String recordFound = "true";
			if (list.isEmpty())
			{
				recordFound = "false";
			}
			request.setAttribute("recordFound", recordFound);
			request.setAttribute("details", list);
			request.getRequestDispatcher("/WEB-INF/result/sqlResult.jsp").forward(
					request, response);
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}
