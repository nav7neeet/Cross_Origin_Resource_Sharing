<html>
<head>
<title>DOM</title>
<script type="text/javascript">
function getAccountBalance()
{
	try
	{
		var balance=window.frames['bank'].document.getElementById('balance').textContent;
		document.getElementById('victim_account_balance').innerHTML=balance;
	}
	catch(err)
	{
		document.getElementById('victim_account_balance').innerHTML=err;		
	}
}
</script>
</head>
<body>

	Attacker Website.<br><br>
	<p onclick="getAccountBalance()">Click here to get the account balance from bank app loaded in iframe.</p>
	<div id="victim_account_balance"></div><br>
	
	<%
		String sameOrigin=request.getParameter("sameOrigin");
		String crossOrigin=request.getParameter("crossOrigin");

		if("true".equals(sameOrigin))
			out.print("<iframe name='bank' width='300' height='100' src='http://localhost:8080/CORS/test/DOM_Bank.html'></iframe>");
		else if("false".equals(sameOrigin))
			out.print("<iframe name='bank' width='300' height='100' src='http://127.0.0.1:8080/CORS/test/DOM_Bank.html'></iframe>");
		else if("true".equals(crossOrigin))
		{
			out.print("<iframe name='bank' width='300' height='100' src='http://127.0.0.1:8080/CORS/test/DOM_Bank3.jsp'></iframe>");
		}	
			
	%>
	
</body>
</html>