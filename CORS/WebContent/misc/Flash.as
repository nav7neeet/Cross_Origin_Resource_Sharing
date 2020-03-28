package
{
	import flash.display.Sprite;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestHeader;
	import flash.net.URLRequestMethod;
	
	public class Flash extends Sprite
	{
		public function Flash()
		{
			super();
			var member1:Object = null;
			var myJson:String = null;
			member1 = new Object();
			member1 = {"acctnum": "100", "confirm": "true"};
			myJson = JSON.stringify(member1);
			
			var url:String = "http://127.0.0.1:8080/CORS/test/flash";
			var request:URLRequest = new URLRequest(url);
			request.requestHeaders.push(new URLRequestHeader("Content-Type", "application/json"));
			request.data = myJson;
			request.method = URLRequestMethod.POST;
			var urlLoader:URLLoader = new URLLoader();
			
			try
			{
				urlLoader.load(request);
				return;
			}
			catch (e:Error)
			{
				trace(e);
				return;
			}
		}
	}
}