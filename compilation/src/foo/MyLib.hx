package foo;

// @:keep // <-- Avoid dead code elimination stripping this class away
class MyLib
{
	public function new() : Void
	{

	}

	public function test() : String
	{
		return "Hello World from MyLib!";
	}
}