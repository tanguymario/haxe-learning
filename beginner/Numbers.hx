class Numbers
{
	public function new()
	{

	}

	public function useNumbers() : Void
	{
		var a : Float = 34;      // Float
		var b : Int = 34;        // Int
		var c = 34.0;            // Float
		var d = 34;              // Int
		var e = (a + 2 * b) / c; // Float
		var f = 0xFF;            // 255 (Int)
		var g = 10e6;            // 1 000 000
		var h = 10e-6;           // -1 000 000
		var i = 0.1 + 0.2;       // Float operations are not always accurate
		var j = Std.random(10);  // Random Int between 0 (included) and 10 (excluded)
		var k = Math.random();   // Random Float between 0.0 (included) and 1.0 (excluded)
		var l = 1 / 0;           // Infinity, See Math.POSITIVE_INFINITY and Math.NEGATIVE_INFINITY
		var m = Math.sqrt(-1.0); // Nan, see Math.isNan()
	}

	public function parseNumbers() : Void
	{
		// String to Int
		Std.parseInt("3");         // 3
		Std.parseInt("3.5");       // 3
		Std.parseInt("3 kilo");    // 3
		Std.parseInt("kilo: 3.5"); // null

		// String to Float
		Std.parseFloat("3");         // 3.0
		Std.parseFloat("3.5");       // 3.5
		Std.parseFloat("3.5 kilo");  // 3.5
		Std.parseFloat("kilo: 3.5"); // Math.NaN

		// Float to Int
		var value:Float = 3.3;
		Std.int(value);    // 3
		Math.floor(value); // 3
		Math.round(value); // 3
		Math.ceil(value);  // 4

		// numbers to string
		var myInt = 10;
		var myFloat = 10.5;
		Std.string(myInt); // "10"
		Std.string(myFloat); // "10.5"
	}

	public function useMath() : Void
	{
		var radians = Math.PI * 2;
		var degrees = radians * 180 / Math.PI;
		var radians =  degrees * Math.PI / 180;

		// Using sin and cos to calculate coords from distance and angle
		var angle = Math.PI;
		var distance = 100;
		var x = Math.cos(angle) * distance;
		var y = Math.sin(angle) * distance;

		var point1 = {x: 350, y: 0}
		var point2 = {x: 350, y: 150}

		var dx = point2.x - point1.x;
		var dy = point2.y - point1.y;
		var angle = Math.atan2(dy, dx);
		trace(angle); // PI/2
	}

	public static function main() : Void
	{
		var numbers = new Numbers();
		numbers.useNumbers();
		numbers.parseNumbers();
		numbers.useMath();
	}
}