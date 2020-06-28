<!DOCTYPE html>
<html>
<head>
<title>Cross Origin Request: Simple</title>
<style>
	li{line-height: 1.8;}
</style>

<script >
	function simpleRequest({method, allowOrigin, contentType})
	{
		var xhr = new XMLHttpRequest();
		var parameter='';
		
		if(typeof allowOrigin  != "undefined")
			parameter="allowOrigin="+allowOrigin;
		
		xhr.open(method, "http://127.0.0.1:8080/CORS/test/getData?"+parameter, true);
		
		xhr.onreadystatechange = function()
		{
		    if (this.readyState == 4 && this.status == 200)
		    {
		      
		    	document.getElementById("response").innerHTML = this.responseText;
		    }
		};
		
		if(method == "POST")
		{
			var data="key1=value1&key2=value2";
			if (contentType == 'application/x-www-form-urlencoded')
				xhr.setRequestHeader("Content-Type", contentType);
			xhr.send(data);
		}
		else
			xhr.send();
	}
</script>
</head>

<body>
	<h4>Instructions</h4>
	
	<ul>
		<li>There are two Origins. The goal is to send a 'cross-origin' request from 'Attacker' to 'Victim'. </li>
		<ul>
			<li>Attacker's Origin: http://localhost:8080 </li>
			<li>Victim's Origin: http://127.0.0.1:8080 </li>
		</ul>
		<li>Open developer tool (F12) and go to Network tab. </li>
		<li>Click each list item to send a 'cross-origin' request. </li>
	</ul>
	
	<h4>Test Cases</h4>
	<ul>
		<li onclick="simpleRequest(
				{
					'method': 'GET',
					'allowOrigin':'false'
				})">
				GET Request (error) </li>
				
		<li onclick="simpleRequest(
				{
					'method': 'GET',
					'allowOrigin':'true'
				})">
				GET Request (success) </li>
				
		<li onclick="simpleRequest(
				{
					'method': 'GET',
					'allowOrigin':'null'
				})">
				GET Request (null origin) </li>		
				
		<li onclick="simpleRequest(
				{
					'method':'POST'
				})">
				POST Request with Content-Type: text/html (success) </li>
				
		<li onclick="simpleRequest(
				{
					'method':'POST', 
					'contentType':'application/x-www-form-urlencoded'
				})">
				POST Request with Content-Type: application/x-www-form-urlencoded (success) </li>

		<li onclick="simpleRequest(
				{
					'method':'HEAD'
				})">
				HEAD Request (success) </li>
	</ul>
	<br>
	
	<strong><mark>Cross Origin Response: </mark></strong> <span id="response" ></span><br><br>
	 
	<jsp:include page="/instructions/Cross_Origin_Req_Simple.jsp"></jsp:include>
	 
</body>
</html>