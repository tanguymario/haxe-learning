class User 
{
	public var name : String;
	private var age : Int;

	public function new(name : String, age : Int)
	{
		this.name = name;
		this.age = age;
	}

	public static function main() : Void
	{
		var user = new User("Tanguy", 22);
		trace(user.name);

		// private = not allowed to access
		// trace(user.age);
	}
}