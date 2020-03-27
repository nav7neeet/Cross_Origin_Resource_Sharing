<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function myCallback(data)
	{
 		document.getElementById('balance').innerHTML=data;
 	}
</script>
</head>

<body>
Make cross origin request and capture the data through JSON Padding.<br><br>
Account balance displayed below is coming from cross origin request.<br><br>
<div id="balance"></div>
<script src="http://127.0.0.1:8080/CORS/test/JSONP_Data.jsp?callback=myCallback"></script>

</body>
</html>