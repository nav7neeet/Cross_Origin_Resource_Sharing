<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	<%
		String callback=request.getParameter("callback");
		out.print(callback+"('Account Balance: INR 15,000')");
 		/* out.print(callback+"([{'artist': 'Michael Jackson', 'album': 'Black or White'},{'artist': 'Beatles, The', 'album': 'Revolution'}])"); */
	%>
