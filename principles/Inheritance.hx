class Point2d
{
	public var x : Float;
	public var y : Float;

	public function new(x, y)
	{
		this.x = x;
		this.y = y;
	}
}

class Point3d extends Point2d
{
	public var z : Float;

	public function new(x, y, z)
	{
		super(x, y);
		this.z = z;
	}
}

interface Printable {}
interface Serializable {}
interface Debuggable extends Printable extends Serializable {}

class Inheritance
{
	public static function main() : Void
	{
		var p = new Point3d(10, 2, 3);
		trace(p);
	}
}