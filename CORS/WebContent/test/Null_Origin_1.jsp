<!DOCTYPE HTML>
<html>
<head>
<script>
 	xhr=new XMLHttpRequest();
	xhr.open("GET","http://127.0.0.1:8080/CORS/test/Null_Origin_Data.jsp", true);
	xhr.send();
	xhr.onreadystatechange = function()
	{
	    if (this.readyState == 4 && this.status == 200)
	    {
	      
	    	document.getElementById("response").innerHTML = this.responseText;
	    }
	};
</script>
</head>

<body>
<jsp:include page="/instructions/Null_Origin_1.jsp"></jsp:include>
<strong>Cross Origin Response: </strong> <span id="response" ></span><br><br>

</body>
</html>