class Singleton
{
	// read-only property
	public static var instance(default, null) : Singleton = new Singleton();

	private function new() {} // private constructor

	// this will be the only way to access the instance
    // MySingleton.instance;

    // This will throw error "Cannot access private constructor"
    // new MySingleton();
}