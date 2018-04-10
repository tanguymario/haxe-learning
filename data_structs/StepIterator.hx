class StepIterator
{
	private var end : Int;
	private var step : Int;
	private var index : Int;

	public inline function new(start:Int, end:Int, step:Int)
	{
		this.index = start;
		this.end = end;
		this.step = step;
	}

	public inline function hasNext()
	{
		return index < end;
	}

	public inline function next()
	{
		return (index += step) - step;
	}

	public static function main() : Void
	{
		for (i in new StepIterator(0, 10, 2)) 
		{
			trace(i);
        }
	}
}