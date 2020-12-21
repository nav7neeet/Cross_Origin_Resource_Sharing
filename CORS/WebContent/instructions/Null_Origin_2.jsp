<b>Lab Details: </b>
There are two Origins. Attacker sends a 'cross-origin' request from
'Attacker' to 'Victim' to get victims data.

<ul>
	<li>Attacker sends the cross origin request from inside an iframe </li>
	<li>Attacker's Origin: null</li>
	<li>Victim's Origin: http://127.0.0.1:8080</li>
	<li>Open developer tool (F12) and go to Network tab.</li>
	<li>Access-Control-Allow-Origin:null in response headers.</li>
	<li>Response displayed in 'Cross Origin Response:'</li>
</ul>