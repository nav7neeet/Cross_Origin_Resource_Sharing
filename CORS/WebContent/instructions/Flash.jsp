<b id="general_instructions">How To Test?</b><br>

<ol>
	<li class='style'>There are two Origins. The aim is to send cross-origin request from 'Attacker' to 'Victim'.</li>
	<ul>
		<li>Attacker: http://localhost:8080 </li>
		<li>Victim: http://127.0.0.1:8080</li>
	</ul>
	<li class='style'>Open developer tool (F12) and go to Network tab.</li>
	
	<li class='style'>Refresh the page and observe the requests</li>
	<li class='style'>The flash file 'Flash.swf' has the code to send a cross-origin request.</li>
	<li class='style'>'Flash.swf' is binary file &amp; we can not see the source code unlike JavaScript.</li>
	<li class='style'>Cross-origin request is made from flash application. So the browser first sends a request to http://127.0.0.1:8080/crossdomain.xml</li>
	<li class='style'>If attacker's origin is allowed in the response, browser sends the cross-origin request.</li>
	<li class='style'>There is no error in conseole so it's a little difficult to debug</li>
</ol>