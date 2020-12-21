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
	<jsp:include page="/instructions/DOM.jsp">
		    <jsp:param name="sameOrigin" value="${param.sameOrigin}"/>
	</jsp:include>
	
	<p onclick="getAccountBalance()">"Click Here" to get account balance from banking app loaded in iframe.</p>
	<div id="account_balance"></div><br>
	
	<%
		String sameOrigin=request.getParameter("sameOrigin");

		if("true".equals(sameOrigin))
			out.print("<iframe name='bank' width='250' height='75' src='http://localhost:8080/CORS/test/DOM_Iframe.html'></iframe>");
		else if("false".equals(sameOrigin))
			out.print("<iframe name='bank' width='250' height='75' src='http://127.0.0.1:8080/CORS/test/DOM_Iframe.html'></iframe>");
	%>

	

</body>
</html>