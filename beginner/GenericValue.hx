class GenericValue<T>
{
	public var value : T;

	public function new(value : T)
	{
		this.value = value;
	}

	public static function main() : Void
	{
		var myIntValue = new GenericValue<Int>(5);
		var myStringValue = new GenericValue<String>("Hello");
	}
}