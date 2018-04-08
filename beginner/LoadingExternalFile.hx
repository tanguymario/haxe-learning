// Need to install hxssl lib with the following command
// haxelib.exe install hxssl

// IMPORTANT: I could not make it work :(

class LoadingExternalFile
{
	public static function main() : Void
	{
		var http = new haxe.Http("http://ip.jsontest.com?format=json");

		http.onData = function (data:String) 
		{
			var result = haxe.Json.parse(data);
			trace('Your IP-address: ${result.ip}');
		}

		http.onError = function (error) 
		{
		 	trace('error: $error');
		}

		http.request();	
	}
}