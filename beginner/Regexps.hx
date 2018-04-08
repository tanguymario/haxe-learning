class Regexps
{
	public static function main() : Void
	{
		var regexp:EReg = ~/world/;
		trace(regexp.match("hello world"));
		// true : 'world' was found in the string
		trace(regexp.match("hello")); 
		// false : 'world' is not found in the string

		// case insensitive matching + global search
		var regexp:EReg = ~/world/ig; 
		trace(regexp.match("HELLO WORLD"));
		// true : 'world' was found in the string

		var regexp:EReg = new EReg("world", "i"); // case insensitive matching 
		trace(regexp.match("HELLO WORLD"));
		// true : 'world' was found in the string

		// Standard Replace use
		var message = "hello world";
		trace(StringTools.replace(message, "hello", "happy")); 
		// "happy world

		// Replace with regex
		var message = "hello world";
		var ereg:EReg = ~/hello/;
		trace(ereg.replace(message, "happy")); 
		// "happy world"

		var message = "high to low";
		var ereg:EReg = ~/(high).+?(low)/;
		trace(ereg.replace(message, "$2 and $1")); 
		// "low and high"

		var message = "important message: Haxe is great";
		var ereg:EReg = ~/(message).+?(is)/;
		if (ereg.match(message)) 
		{ 
  			trace(ereg.matched(1)); // message
  			trace(ereg.matched(2)); // is
			trace(ereg.matchedLeft()); // important 
			trace(ereg.matchedRight()); //  great
		}
	}
}