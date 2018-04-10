// + Improve code readability
// - Decrease performace each call
// This technique should be AVOIDED
class NamedParameters
{
	// Could be useful to specify options
  	static public function foo(options:{x:Int, y:Float, name:String}) 
  	{
	    trace('Got options: ${options.x}, ${options.y} and ${options.name}');
  	}
  
  	// Or could be useful to specify configuration
  	static public function bar(config:{x:Int, y:Float, name:String}) 
  	{
	    trace('Got configuration: ${config.x}, ${config.y} and ${config.name}');
  	}

	public static function main() : Void
	{
		foo({ x: 12, y:1.0, name: "foo"});
    	bar({ x: 10, y:2.0, name: "bar"});
	}
}