<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<html>
<head>
<title>Home</title>
</head>
<body>
		<h3>User details...</h3>

		<%
			if(request.getAttribute("recordFound").equals("true"))
			{
				List list = (List) request.getAttribute("details");
				Iterator iterator = list.iterator();
				int c=0;
				while (iterator.hasNext())
				{
					out.print(iterator.next()+" ");
					c++;
					if(c==3)
					{
						c=0;
						out.print("<br><br>");
					}
				}
			}
			else
			{
				out.print("<h5>No records found corresponding to the details entered by you...:) <br>Try again</h5>");
			}
		%>
</body>
</html>
