class EverythinIsAnExpression
{
	public static function main() : Void
	{
		trace(if (Math.random() > 0.5) "Hello" else "Bye");

		trace(try haxe.Json.parse("{") catch (e:Dynamic) null);

		trace(switch (Std.random(3)) {
			case 0: "zero";
			case 1: "one";
			case 2: "two";
			default: "impossible!";
		});

		trace({
		  	var l = new List();
		  	for (i in 0...10) l.add(i);
		  	l;
		});

		function toInt(s : String) : Int return Std.parseInt(s);

		// trace(for (i in 0...10) i); // ERROR: Cannot use Void as value
	}
}