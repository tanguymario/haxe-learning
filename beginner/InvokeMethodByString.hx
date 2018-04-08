class InvokeMethodByString
{
	public function new() {}
	
	@:keep public function printName()
	{
		trace("InvokeMethodByString method called!");
	}

	public static function main() : Void
	{
		// Possible because of Dead Code Elimination
		var test = new InvokeMethodByString();
		var fn = Reflect.field(test, "printName");
		Reflect.callMethod(test, fn, []);		
	}
}