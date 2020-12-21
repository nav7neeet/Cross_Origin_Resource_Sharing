<html>
<head>
<title>DOM</title>
<script type="text/javascript">
	function sendMessage()
	{
			var bank=window.frames['bank'];
			bank.postMessage('Hi from parent window','http://127.0.0.1:8080');
			
	}
</script>
</head>

<body>
	<jsp:include page="/instructions/Postmessage.jsp">
		    <jsp:param name="sameOrigin" value="${param.sameOrigin}"/>
	</jsp:include>
	
	<p onclick="sendMessage()">"Click Here" to send message to iframe.</p>
	<div id="account_balance"></div><br>
	
	<iframe name='bank' width='300' height='150' src='http://127.0.0.1:8080/CORS/test/Postmessage_iframe.html'></iframe>
	<br><br>
	

</body>
</html>