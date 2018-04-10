// Alternative to length3 function
typedef Length = 
{
	var length(default, null):Int;
}

class DifferentParameterTypes
{
	// Array of ints
	public static function length(o:Array<Int> /*or String*/):Int
	{
		return o.length;
	}

	// Works for everything. Lazy and DANGEROUS
	public static function length2(o:Dynamic):Int
	{
		return o.length;
	}

	// Getting rid of Dynamic. Will show compile errors if not respected
	public static function length3<T:{var length(default, null):Int;}>(o:T) 
	{
  		return o.length;
	}

	public static function length4<T:Length>(o:T)
	{
		return o.length;
	}

	public static function main() : Void
	{
		// trace("Length of a String: " + length("Hello world"));
        trace("Length of an Array: " + length([0, 3, 5, 2, 1]));
        // trace("This will throw a runtime error: " + length(3));

        trace("Length of a String: " + length2("Hello world"));
      	trace("Length of an Array: " + length2([0, 3, 5, 2, 1]));
        // trace("This will throw a runtime error: " + length2(3));

        trace("Length of a String: " + length3("Hello world"));
        trace("Length of an Array: " + length3([0, 3, 5, 2, 1]));
        // trace("This will throw a runtime error: " + length3(3));

        trace("Length of a String: " + length4("Hello world") + " and * 2 " + length2("Hello world"));
        trace("Length of an Array: " + length4([0, 3, 5, 2, 1]) + " and * 2 " + length2([0, 3, 5, 2, 1]));
        // trace("This will throw a runtime error: " + length4(3));

        // For more information, read the tutorial
	}
}