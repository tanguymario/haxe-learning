class Item<T>
{
	public var value : T;

	// factory method
	public static function create<T>() : Item<T>
	{
		return new Item<T>();
	}

	private function new() {} // private constructor

	public static function main() : Void
	{
		// This works because of type-inference, the 
	    // compiler knows that the return type must be of type `Item<Int>`s
	    var myItem:Item<Int> = Item.create(); 
	    myItem.value = 10; // works
	    trace(myItem.value); // 10

	    // complex type example
	    var myItem2:Item<Array<Int>> = Item.create();
	    myItem2.value = [1, 2, 3]; // works too
	    trace(myItem2.value); // [1,2,3]
	}
}