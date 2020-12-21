<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
li.style {
  line-height: 1.8;
}
</style>
</head>
<body>

	<jsp:include page="/instructions/Flash.jsp">
		    <jsp:param name="sameOrigin" value="${param.sameOrigin}"/>
	</jsp:include>
	<br>
	Enable Flash player in Google Chrome settings to play flash content.<br>
	<object>
		<embed src="/CORS/test/flash.swf" width="20%" height="20%"></embed>
	</object>

	
	
</body>
</html>