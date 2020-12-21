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
	The following exercises are based on this research paper<a href="https://www.netsparker.com/whitepaper-same-origin-policy/">(Same Origin policy)</a><br>
	<ol>
		<li class='style'><a href="${pageContext.request.contextPath}/test/Cross_Origin_Req_Simple.jsp">Cross Origin Request: Simple</a> </li>

		<li class='style'><a href="${pageContext.request.contextPath}/test/Cross_Origin_Req_PreFlighted.jsp">Cross Origin Request: Pre-Flighted</a> </li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/Cross_Origin_Req_Flash.jsp">Cross Origin Request: Flash</a> </li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/DOM.jsp?sameOrigin=true">Document Object Model (DOM): Same Origin</a></li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/DOM.jsp?sameOrigin=false">Document Object Model (DOM): Different Origin </a> </li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/DOM.jsp?crossOrigin=true">Document Object Model (DOM): Allow Cross Origin (Not possible)</a> </li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/JSONP.jsp">JSON Padding</a> </li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/Null_Origin_1.jsp">Null Origin: (error)</a> </li>
		
		<li class='style'><a href="${pageContext.request.contextPath}/test/Null_Origin_2.jsp">Null Origin: (success)</a> </li>
	</ol>
</body>
</html>