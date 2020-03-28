<!DOCTYPE html>
<html>
<head>
<title>Cross Origin Request</title>
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
	
	
	function preflightedRequest({method, contentType, allowHeaders, allowCredentials, allowMethods})
	{
		var xhr = new XMLHttpRequest();
		var data='';
		var header='';
		var reqMethod='';
		var creds='';
		
		if(typeof allowHeaders  != "undefined")
			header="allowHeaders="+allowHeaders;
		if(typeof allowMethods != "undefined")
			reqMethod="allowMethods="+allowMethods;
		if(typeof allowCredentials != "undefined")
			creds="allowCredentials="+allowCredentials;
		
		var parameter=header+'&'+creds+'&'+reqMethod;
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
			if(contentType=='application/x-www-form-urlencoded')
				data="key1=value1&key2=value2";
			else if(contentType =='application/json')
				data = JSON.stringify({"email": "test@mail.com", "name": "test"});
			
			if(allowCredentials =='true' || allowCredentials =='false')
				xhr.withCredentials = true;
			
			xhr.setRequestHeader("Content-Type", contentType);
			xhr.send(data);
		}
		else
			xhr.send();
	}
</script>
</head>

<body>
	<h4>Cross Origin Request. Click each item to send "Cross-Origin" request.</h4>
	<b>Simple Request</b>
	<ul>
		<li onclick="simpleRequest(
				{
					'method': 'GET',
					'allowOrigin':'false'
				})">
				GET Request (cors error)</li>
				
		<li onclick="simpleRequest(
				{
					'method': 'GET',
					'allowOrigin':'true'
				})">
				GET Request (success)</li>
				
		<li onclick="simpleRequest(
				{
					'method':'POST'
				})">
				POST Request with Content-Type: text/html (success)</li>
				
		<li onclick="simpleRequest(
				{
					'method':'POST', 
					'contentType':'application/x-www-form-urlencoded'
				})">
				POST Request with Content-Type: application/x-www-form-urlencoded (success)</li>

		<li onclick="simpleRequest(
				{
					'method':'HEAD'
				})">
				HEAD Request (success)</li>
	</ul>
	
	
	<b>Preflighted Request</b>
	<ul>	
		<li onclick="preflightedRequest(
				{
					'method': 'POST', 
					'contentType': 'application/json', 
					'allowHeaders': 'false'
				})">
				POST Request with Content-Type: application/json (cors error)</li>
		
		<li onclick="preflightedRequest(
				{
					'method': 'POST', 
					'contentType': 'application/json', 
					'allowHeaders': 'true'
				})">
				POST Request with Content-Type: application/json (success)</li>
		
		<li onclick="preflightedRequest(
				{
					'method': 'PUT', 
					'contentType': 'application/json', 
					'allowMethods': 'false'
				})">
				PUT Request (cors error)</li>
		
		<li onclick="preflightedRequest(
				{
					'method': 'PUT', 
					'contentType': 'application/json', 
					'allowMethods': 'true'
				})">
				PUT Request (success)</li>
		
		<li onclick="preflightedRequest(
				{
					'method': 'POST', 
					'contentType': 'application/json', 
					'allowHeaders': 'true',
					'allowCredentials': 'false'
				})">
				POST Request with Credentials (cors error)</li>
			
		<li onclick="preflightedRequest(
				{
					'method': 'POST', 
					'contentType': 'application/json', 
					'allowHeaders': 'true',
					'allowCredentials': 'true'
				})">
				POST Request with Credentials (success)</li>
	</ul>
	
	<b>Cross Origin Response</b> <div id="response" ></div>
	
</body>
</html>