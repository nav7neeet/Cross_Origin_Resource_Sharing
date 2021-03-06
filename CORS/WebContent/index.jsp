<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Same Origin Policy</title>
<style>
li.style {
  line-height: 1.8;
}
</style>
</head>
<body>
	<b>Same Origin Policy</b><br>
	<ol>
		<li class='style'><a href="${pageContext.request.contextPath}/test/Simple_Request.jsp">Cross Origin Request: Simple</a> </li>

		<li class='style'><a href="${pageContext.request.contextPath}/test/Preflighted_Request.jsp">Cross Origin Request: Pre-Flighted</a> </li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/Flash.jsp">Cross Origin Request: Flash</a> </li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/DOM.jsp?sameOrigin=true">Document Object Model (DOM): Same Origin</a></li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/DOM.jsp?sameOrigin=false">Document Object Model (DOM): Different Origin </a> </li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/Postmessage.jsp">PostMessage: Cross-Window communication between different origins</a> </li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/JSONP.jsp">JSON Padding</a> </li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/Null_Origin_1.jsp">Null Origin: (error)</a> </li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/Null_Origin_2.jsp">Null Origin: (success)</a> </li>
	</ol>
	<br><br>
<b>	Reference White Paper: <a href="https://www.netsparker.com/whitepaper-same-origin-policy/">(Same Origin policy)</a></b><br>
<br>
Just in case you can't see OPTIONS request in dev tool. Follow this <a href="https://stackoverflow.com/questions/57410051/chrome-not-showing-options-requests-in-network-tab#:~:text=You'll%20need%20to%20go,the%20flag%2C%20and%20restart%20Chrome.&text=Chrome%2081%20does%20not%20seem,and%20restarting%20on%20my%20computer.">Stackoverflow link.</a>

</body>
</html>
