<b>Lab Details: </b>
There are two Origins. Attacker sends a 'cross-origin' request from
'Attacker' to 'Victim' to get victims data.

<ul>
	<li>Attacker's Origin: http://localhost:8080</li>
	<li>Victim's Origin: http://127.0.0.1:8080</li>
	<li>Open developer tool (F12) and go to Network tab.</li>
	<li>Access-Control-Allow-Origin:null in response headers.</li>
	<li>CORS error in Console tab.</li>
</ul>