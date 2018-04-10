using MathExtensions;

class MathExtensions
{
	// Returns a random number between a (inclusive) and b (exclusive)
	public static function randomBetween(cl:Class<Math>, a:Int, b:Int)
	{
		var diff:Int = b - a;
		return a + Math.floor(Math.random() * diff);
	}

	public static function main() : Void
	{
		trace("Random value between 10 and 20: " + Math.randomBetween(10, 20));
	}
}