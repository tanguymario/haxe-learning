class Lists
{
	public static function main() : Void
	{
		var listOfInts = new List<Int>();
		var listOfListOfInts = new List<List<Int>>();

		// Adds 1 to the tail (end) of the list
		listOfInts.add(1);
		// Adds 2 to the head (start) of the list
		listOfInts.push(2);
		trace(listOfInts);

		// Removes first occurence of 1
		listOfInts.remove(1);
		// Removes and returns the head element of the list
		listOfInts.pop();

		// Retrieve elems
		listOfInts = new List<Int>();
		listOfInts.add(1);
		listOfInts.push(2);
		// Returns the head element of the list
		listOfInts.first();
		// Returns the tail element of the list
		listOfInts.last();

		// Iterate
		for (item in listOfInts) 
		{
    		// do something
		}

		// Filters
		var listOfEvenInts = listOfInts.filter(function (e) return e % 2 == 0);

		// Map
		var listOfIntsAsStrings = listOfInts.map(function (e) return Std.string(e));

		// Returns a string of list elements concatenated by separator string
		var withSeparator : String = listOfInts.join(" / ");
		// Returns a string representation of the list structure
		var asStructure : String = listOfInts.toString();
	}
}