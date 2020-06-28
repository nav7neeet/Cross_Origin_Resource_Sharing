<html>
<head>
<title>DOM</title>
<script type="text/javascript">
	function getAccountBalance()
	{
			var balance=window.frames['bank'].document.getElementById('balance').textContent;
			document.getElementById('account_balance').innerHTML=balance;
	}
</script>
</head>

<body>
	<b>Attacker Website</b><br>
	<p onclick="getAccountBalance()">"Click Here" to get account balance from banking app loaded in iframe.</p>
	<div id="account_balance"></div><br>
	
	<%
		String sameOrigin=request.getParameter("sameOrigin");
		String crossOrigin=request.getParameter("crossOrigin");

		if("true".equals(sameOrigin))
			out.print("<iframe name='bank' width='250' height='75' src='http://localhost:8080/CORS/test/DOM_Bank1.html'></iframe>");
		else if("false".equals(sameOrigin))
			out.print("<iframe name='bank' width='250' height='75' src='http://127.0.0.1:8080/CORS/test/DOM_Bank1.html'></iframe>");
		else if("true".equals(crossOrigin))
			out.print("<iframe name='bank' width='300' height='100' src='http://127.0.0.1:8080/CORS/test/DOM_Bank2.jsp'></iframe>");
	%>

	 <jsp:include page="/instructions/DOM.jsp">
		    <jsp:param name="sameOrigin" value="${param.sameOrigin}"/>
	</jsp:include>

</body>
</html>