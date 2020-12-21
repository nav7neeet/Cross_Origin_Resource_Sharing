<b>Lab Details: </b>
There are two Origins. Attacker sends a 'cross-origin' request from
'Attacker' to 'Victim' to get victim's data through JSON Padding.

<ul>
	<li>Attacker's Origin: http://localhost:8080</li>
	<li>Victim's Origin: http://127.0.0.1:8080</li>
	<li>Request is not triggered through AJAX.</li>
	<li>There is a script tag with 'src' attribute which triggers HTTP request</li>
	<li>Open developer tool (F12) and go to Network tab.</li>
	
</ul>