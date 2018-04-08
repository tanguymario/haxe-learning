class Point
{
	public var x : Float;
	public var y : Float;

	public inline function new(x, y)
	{
		this.x = x;
		this.y = y;
	}

	public static function main() : Void
	{
		var myPoint = new Point(100, 150);
		trace(myPoint.x);

		// In JS this would be compiled into 
		// var myPoint_x = 150
		// ...
	}
}