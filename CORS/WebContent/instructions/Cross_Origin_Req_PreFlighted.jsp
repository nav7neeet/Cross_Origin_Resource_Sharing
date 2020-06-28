<b>Observe that each of the 'cross-origin' request is </b><br>
Pre-flighted i.e. browser sends OPTIONS request before the actual request. <br>
Origin: http://localhost:8080 in Request Headers.<br>

In addition to that take note of the following specifc things<br>

<ul>
	<li id='POST Request with Content-Type: application/json (cors error)'><b>POST Request with Content-Type: application/json (cors error) <a href='#' onclick='history.go(-1)'>&#8678;</a></b></li>
	<ul>
		<li>Custom header Access-Control-Request-Headers: content-type in Request Headers</li>
		<li>Access-Control-Allow-Origin: http://localhost:8080 in Response Headers</li>
		<li>CORS error in Console tab: Access-Control-Allow-Headers absent from Response Headers.</li>
	</ul><br>
	
	<li id='POST Request with Content-Type: application/json (success)'><b>POST Request with Content-Type: application/json (success) <a href='#' onclick='history.go(-1)'>&#8678;</a></b></li>
		<ul>
			<li>Custom Access-Control-Request-Headers: content-type in Request Headers</li>
			<li>Access-Control-Allow-Origin: http://localhost:8080 in Response Headers</li>
			<li>Access-Control-Allow-Headers: content-type in Response Headers.</li>
			<li>Request Method: POST in General.</li>
			<li>Response displayed in 'Cross Origin Response:'.</li>
		</ul><br>
	
	<li id='PUT Request (cors error)'><b>PUT Request (cors error) <a href='#' onclick='history.go(-1)'>&#8678;</a></b></li>
			<ul>
				<li>Access-Control-Request-Method: PUT in Request Headers</li>
				<li>Access-Control-Allow-Origin: http://localhost:8080 in Response Headers</li>
				<li>CORS error in Console tab: Access-Control-Allow-Methods absent from Response Headers.</li>
			</ul><br>
	
	<li id='PUT Request (success)'><b>PUT Request (success) <a href='#' onclick='history.go(-1)'>&#8678;</a></b></li>
			<ul>
				<li>Access-Control-Request-Method: PUT in Request Headers.</li>
				<li>Access-Control-Allow-Origin: http://localhost:8080 in Response Headers.</li>
				<li>Access-Control-Allow-Methods: PUT in Response Headers.</li>
				<li>Request Method: POST in General.</li>
				<li>Response displayed in 'Cross Origin Response:'.</li>
			</ul><br>
	
	<li id='POST Request with Credentials (cors error)'><b>POST Request with Credentials (cors error) <a href='#' onclick='history.go(-1)'>&#8678;</a></b></li>
			<ul>
				<li>Access-Control-Request-Headers: content-type in Request Headers.</li>
				<li>Access-Control-Allow-Headers: content-type in Response Headers.</li>
				<li>Access-Control-Allow-Origin: http://localhost:8080 in Response Headers</li>
				<li>CORS error in Console tab: Access-Control-Allow-Credentials absent from Response Headers.</li>
			</ul><br>
	
	<li id='POST Request with Credentials (success)'><b>POST Request with Credentials (success) <a href='#' onclick='history.go(-1)'>&#8678;</a></b></li>
			<ul>
				<li>Access-Control-Request-Headers: content-type in Request Headers.</li>
				<li>Access-Control-Allow-Headers: content-type in Response Headers</li>
				<li>Access-Control-Allow-Origin: http://localhost:8080 in Response Headers</li>
				<li>Access-Control-Allow-Credentials: true in Response Headers</li>
				<li>Request Method: POST in General.</li>
				<li>Response displayed in 'Cross Origin Response:'.</li>
			</ul><br>
</ul>
