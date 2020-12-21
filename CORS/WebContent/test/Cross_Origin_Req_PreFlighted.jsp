<!DOCTYPE html>
<html>
<head>
<title>Cross Origin Request</title>
<style>
	li{line-height: 1.8;}
	
	/* Style the tab */
	.tab {
		overflow: hidden;
		border: 1px solid #ccc;
		background-color: #f1f1f1;
	}
	
	/* Style the buttons inside the tab */
	.tab button {
		background-color: inherit;
		float: left;
		border: none;
		outline: none;
		cursor: pointer;
		padding: 10px 12px;
		transition: 0.3s;
		font-size: 16px;
	}
	
	/* Change background color of buttons on hover */
	.tab button:hover {
		background-color: #ddd;
	}
	
	/* Create an active/current tablink class */
	.tab button.active {
		background-color: #ccc;
	}
	
	/* Style the tab content */
	.tabcontent {
		display: none;
		padding: 6px 12px;
		border: 1px solid #ccc;
		border-top: none;
	}
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
	<b>Lab Details: </b>There are two Origins. Attacker sends a 'cross-origin' request from 'Attacker' to 'Victim' to get victims data. 
	
	<ul>
		<li>Attacker's Origin: http://localhost:8080 </li>
		<li>Victim's Origin: http://127.0.0.1:8080 </li>
		<li>Open developer tool (F12) and go to Network tab. </li>
		<li>Click each item below to send a 'cross-origin' request. </li>
	</ul>
	
	<b>Test Cases</b>
	<ol>	
		<li onclick="preflightedRequest(
				{
					'method': 'POST', 
					'contentType': 'application/json', 
					'allowHeaders': 'false'
				})">
				POST Request & Content-Type: application/json (error)</li>
		
		<li onclick="preflightedRequest(
				{
					'method': 'POST', 
					'contentType': 'application/json', 
					'allowHeaders': 'true'
				})">
				POST Request & Content-Type: application/json (success)</li>
		
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
	</ol>
	
	<strong><mark>Cross Origin Response: </mark> </strong> <span id="response" ></span><br><br>
	 
	 <jsp:include page="/instructions/Cross_Origin_Req_PreFlighted.jsp"></jsp:include>

</body>
</html>