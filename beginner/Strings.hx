class Strings
{
	public function new()
	{

	}

	public static function main() : Void
	{
		trace("Hello" + " " + "World");

		var name = "Tanguy";
		var age = 22;
		trace("Hello my name is " + name + " and my age is " + age);

		trace("apple" == "apple");
		trace("apple" == "aple");

		trace("apple" > "ananas");

		var fruits = "
		- apple
		- pear
		- banana";

		trace(fruits);

		trace("Bonjour".toUpperCase());

		trace(StringTools.replace("I am Eikichi Onizuka", "Eikichi Onizuka", "Tanguy"));
		trace(StringTools.startsWith("Haxe is great!", "Haxe")); // true
		trace(StringTools.endsWith("Haxe is great!", "Haxe")); // false
		trace("#" + StringTools.hex(255, 6)); // #0000FF

		// Non extended version
		trace(StringTools.replace("I am Eikichi Onizuka", "Eikichi Onizuka", "Tanguy"));

		// Extended version
		var msg = "I am Eikichi Onizuka";
		// using StringTools; 
		// msg.replace('x', 'C');

		trace('\n'.code);
	}
}