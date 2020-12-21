<%!
String success="5. Attacker 'can' read account balance successfully as Attacker's and Banking app Origin are same.<br>";
String error="5. Attacker 'can not' read account balance as Attacker's Origin and Banking app Origin are different.<br> 6. Go to 'Console' tab	to see CORS error.";
String origin1="http://localhost:8080";
String origin2="http://127.0.0.1:8080";
%>


<b>How to test?</b><br>
1. You are on attacker's website. It loads a Banking app in an iframe.<br>
2. Open developer tool (F12) & reload the page.<br>
3. Go to "Network" tab & note -

<ul>
	<li>Attacker's Origin: http://localhost:8080</li>
	<li>Banking app Origin: 
	<% 
		String sameOrigin=request.getParameter("sameOrigin");
		if("true".equals(sameOrigin))
			out.print(origin1);
		else
			out.print(origin2);
	%></li>
</ul>	

4. Attacker tries to read account balance (Click on "Click Here") from Banking app loaded in iframe.<br>

	<% 
		if("true".equals(sameOrigin))
			out.print(success);
		else
			out.print(error);
	%>