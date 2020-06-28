<!DOCTYPE html>
<html>
<head>
<title>Cross Origin Request</title>
<style>
	li{line-height: 1.8;}
</style>
<script >
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
		<li onclick="preflightedRequest(
				{
					'method': 'POST', 
					'contentType': 'application/json', 
					'allowHeaders': 'false'
				})">
				POST Request with Content-Type: application/json (error)</li>
		
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
				PUT Request (error)</li>
		
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
				POST Request with Credentials (error)</li>
			
		<li onclick="preflightedRequest(
				{
					'method': 'POST', 
					'contentType': 'application/json', 
					'allowHeaders': 'true',
					'allowCredentials': 'true'
				})">
				POST Request with Credentials (success)</li>
	</ul><br>
	
	<strong><mark>Cross Origin Response: </mark> </strong> <span id="response" ></span><br><br>
	 
	 <jsp:include page="/instructions/Cross_Origin_Req_PreFlighted.jsp"></jsp:include>

</body>
</html>