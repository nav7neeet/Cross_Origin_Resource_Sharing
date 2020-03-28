<html>
<head>
<title>Cross Origin Resource Sharing</title>
</head>
<body>
Cross Origin Resource Sharing. <br><br>
<a href="${pageContext.request.contextPath}/test/DOM.jsp?sameOrigin=true">1. Document Object Model (DOM): Same Origin</a><br>
<a href="${pageContext.request.contextPath}/test/DOM.jsp?sameOrigin=false">2. Document Object Model (DOM): Different Origin </a> <br>
<a href="${pageContext.request.contextPath}/test/DOM.jsp?crossOrigin=true">3. Document Object Model (DOM): Allow Cross Origin (Not possible)</a> <br>
<a href="${pageContext.request.contextPath}/test/JSONP.jsp">4. JSON Padding</a> <br>
<a href="${pageContext.request.contextPath}/test/Cross_Origin_Request.jsp">5. Cross Origin Request</a> <br>
<a href="${pageContext.request.contextPath}/test/Cross_Origin_Request_Flash.jsp">6. Cross Origin Request: Flash</a> <br>

</body>
</html>