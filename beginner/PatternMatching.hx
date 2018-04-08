class PatternMatching
{
	public static function main() : Void
	{
		for (value in 0...10)
		{
			switch value
			{
				case 2:
					trace("2");
				case 4:
					trace("4");
				default:
					trace("default");
			}
		}

		trace("");
		trace("---");
		trace("");
		
		for (value in 0...10)
		{
			switch value
			{
				case 2:
					trace("2");
				case 4:
					trace("4");
				case _:
					trace("default");
			}
		}

		trace("");
		trace("---");
		trace("");
		
		/////////////////////////////////////////////
		// IMPORTANT
		// The order of the cases are important.
		// For the sake of clarity, the following code will never 
		// log any special number, 
		// because it will match the "others" pattern first. 
		/////////////////////////////////////////////
		for (value in 0...10)
		{
			switch value
			{
				case 2:
					trace("2");
				case 4:
					trace("4");
				case other:
					trace("other: " + other);
			}
		}

		trace("");
		trace("---");
		trace("");

		for (value in 0...10) 
		{
		 	switch value 
		 	{
		    	case special = 2: 
		      		trace("special number: " + special);
		    	case other: 
		      		trace("other: " + other);
		  	}
		}

		trace("");
		trace("---");
		trace("");

		for (value in 0...10) 
		{
  			switch value 
  			{
    			case 2 | 4 | 6: 
      				trace("special number");
    			case other: 
      				trace("other: " + other);
			}
		}

		trace("");
		trace("---");
		trace("");

		for (value in 0...10) 
		{
  			switch value 
  			{
  				// When 2 or 4: does NOTHING!!
  				// Do not use this syntax
    			case 2:
    			case 4:
    			case 6: 
      				trace("special number");
    			case other: 
      				trace("other: " + other);
			}
		}

		trace("");
		trace("---");
		trace("");

		switch Std.random(10) 
		{
		  	case special = 2 | 4 | 6: 
		    	trace("special number: " + special);
		  	case other:
		    	trace("other: " + other);
		}

		trace("");
		trace("---");
		trace("");

		function isEven(value:Float) return value % 2 == 0;

		for (value in 0...10) 
		{
		  	if (isEven(value)) 
		  	{
		    	trace("even");
		  	} 
		  	else 
		  	{
		    	trace("odd");
		  	}
		}

		trace("");
		trace("---");
		trace("");

		for (value in 0...10) 
		{
  			switch isEven(value) 
  			{
    			case true: 
      				trace("even");
    			case false: 
      				trace("odd");
  			}
		}

		trace("");
		trace("---");
		trace("");

		// Extractors
		// Pattern matching extractors are identified by the case 
		// expression => pattern: syntax. 
		// Extractors consist of two parts, which are separated by the 
		// => operator.
		// The left side can be any expression, where all occurrences 
		// of underscore _ are replaced with the currently matched value.
		// The right side is a pattern which is matched against the result of 
		// the evaluation of the left side.
		// Don't let the underscores confuse you.
		// In extractors (when there's =>), _ has a special meaning: 
		// the currently matched value.
		for(value in 0...10) 
		{
		  	switch value 
		  	{
		    	// match if value equals two
		    	case _ => 2:
		      		trace("found special number");
		  	}
		}

		trace("");
		trace("---");
		trace("");

		function add(a:Int, b:Int) return a + b;

		var input = 3;

		switch input 
		{
		  	case add(_, 1) => result:
		    	trace(result);
		    	// add(3 + 1)
		    	// 1 + 3 = 4
		}

		trace("");
		trace("---");
		trace("");

		function mul(a:Int, b:Int) return a * b;

		switch input 
		{
  			case mul(add(_, 1), 3) => result:
    			trace(result);
    			// mul(add(3 + 1), 3)
    			// 1 + 3 = 4, => 4 * 3 = 12
		}

		// Sometimes it's easier to read complex patterns like that once 
		// you know that extractors are just a kind of pattern. 
		// So given that extractor is <expr> => <pattern>, 
		// you can nest extractors like <expr> => (<expr> => <pattern>).

		trace("");
		trace("---");
		trace("");

		switch input 
		{
		  	case add(_, 1) => mul(_, 3) => result:
		    	trace(result);
		    	// mul(add(3 + 1), 3)
		    	// 1 + 3 = 4, => 4 * 3 = 12
		}

		trace("");
		trace("---");
		trace("");

		for (value in 0...10) 
		{
		  	switch value 
		  	{
		    	// match even numbers
		    	case isEven(_) => true: 
		      		trace("even");

		    	// match anything
		    	case _: 
		      		trace("odd");
		  	}
		}

		trace("");
		trace("---");
		trace("");

		for (value in 0...10) 
		{
 			switch value 
 			{
    			// match number 4
    			case special = 4: 
      				trace("special number: " + special);

    			// match even numbers
			    case value = isEven(_) => true: 
      				trace("even number: " + value);

    			// match anything
    			case other:
      				trace("other: " + other);
			}
		}

		trace("");
		trace("---");
		trace("");

		// It's possible to match on multiple values, 
		// by using switch [expr, expr, ..] which uses array syntax. 
		// The cases should contain an array of the same length. 
		// This type of matching makes it easier to compare values between cases
		var myArray = [1, 6];
		switch (myArray) 
		{
		  	case [2, _]: 
		    	trace("0");
		  	case [_, 6]:
		    	trace("1");
		  	case []: 
			    trace("2");
		  	case [_, _, _]: 
			    trace("3");
		  	case _: 
			    trace("4");
		}

		trace("");
		trace("---");
		trace("");

		// For example for the FizzBuzz test, 
		// it will set code really easier to read
		function isMultipleOf(value:Float, of:Float):Bool 
			return value % of == 0;

		// Simple but long version
		for (value in 1...101) 
		{ 
  			var multipleOf3 = isMultipleOf(value, 3);
  			var multipleOf5 = isMultipleOf(value, 5);
  			if (multipleOf3 && multipleOf5) 
  			{
    			trace("FizzBuzz");
  			} 
  			else if (multipleOf3) 
  			{
    			trace("Fizz");
  			} 
  			else if (multipleOf5) 
  			{
    			trace("Buzz");
 			} 
 			else 
 			{
    			trace(Std.string(value));
  			}
		}

		trace("");
		trace("---");
		trace("");

		// Haxe preferred version
		for(value in 1...101) 
		{
		  	trace(switch [isMultipleOf(value, 3), isMultipleOf(value, 5)] 
		  	{
		    	case [true, true]: "FizzBuzz";
		    	case [true, false]: "Fizz";
		    	case [false, true]: "Buzz";
		    	case [false, false]: Std.string(value);
		  	});
		}

		trace("");
		trace("---");
		trace("");

		var nbPlays = 10;
		var game = new RockPaperScissorsGame("Michel", "Jean-Charles");
		for (i in 0...nbPlays)
		{
			game.assignNewRandomMoves();
			var winner = game.play();
			if (winner == null)
			{
				trace("Draw!");
			}
			else 
			{
				trace(winner.name);
			}
		}

		trace("");
		trace("---");
		trace("");

		// Array matching
		// Array matching is looks similar to matching on multiple values, 
		// but this matches on actual arrays, not on multiple things which 
		// can be different types. 
		// The cases can have different array length. 
		// It can also be very useful when you want to parse/match input, 
		// e.g. for a text based game, bot or when building a 
		// command-line interface (CLI). 
		// In the following example we want to parse "say {word} to {name}". 
		// If the input doesn't match, it says "unknown command". 
		// As you can see we capture {word} and {name} as variables.
		var input = "say hello to Dave";

		switch (input.split(" "))
		{
		  	// match "say {word} to {name}"
		  	case ["say", word, "to", name]: 
			    trace('$word to $name');
			// match anything
		  	case _: 
			    trace("unknown command");
		}
		// hello to Dave

		trace("");
		trace("---");
		trace("");

		var input = "say hi to Mark";

		switch (input.split(" ")) 
		{
  			// match "say {word} to {name}" where name is specific name
  			case ["say", word, "to", name = "Sophia" | "Emma" | "Olivia"]: 
    			trace('I only want to say $word to you, $name');
 			// match "say {word} to {name}"
  			case ["say", word, "to", name]: 
    			trace('$word to $name');
  			// match anything
  			case _: 
    			trace("unknown command");
		}

		trace("");
		trace("---");
		trace("");

		// Guards
		// It is possible to restrict case using if statements. 
		// We call these guards. 
		// They can be used with the case ... if(condition): syntax. 
		// For example, suppose you want to check whether an integer 
		// is greater than, less than, or equal to zero.

		// Non-guarded example
		var value = 10;
		if (value > 0)
		{
			trace("positive: " + value);
		}
		else if (value < 0)
		{
			trace("negative: " + value);
		}
		else 
		{
			trace("zero");
		}

		trace("");
		trace("---");
		trace("");

		// Guarded example
		switch value 
		{
		  	// match if v is bigger than 0
		  	case v if (v > 0): 
			    trace("positive: " + v);
		  	// match if v is smaller than 0
		  	case v if (v < 0): 
			    trace("negative: " + v);
		  	// matches anything
		  	case _: 
			    trace("zero");
		}

		trace("");
		trace("---");
		trace("");

		var input = "say hello 3 times";
		switch input.split(" ") 
		{
		  	// match "say {word}"
		  	case ["say", word]: 
			    trace(word);
		  	// match "say {word} to {name}" where name is specific name
		  	case ["say", word, "to", name = "Sophia" | "Emma" | "Olivia"]: 
			    trace('I only say $word to you, $name');
		  	// match "say {word} to {name}"
		  	case ["say", word, "to", name]: 
		    	trace('$word to $name');
		  	// match "say {word} {amount} times" where {word} is a greeting 
		  	// and {amount} is a number.
		  	case [action = "say", word = "hello"|"hi"|"hey", amount, "times"] 
		  	if (~/[0-9]{1,}/.match(amount)): 
			    for (i in 0 ... Std.parseInt(amount)) 
			    {
		      		trace('$action $word');
		      	}
		  	// matches anything
		  	case _:
			    trace("unknown command");
		}

		trace("");
		trace("---");
		trace("");

		var person = { name: "Mark", age: 33 };
		switch person 
		{
		  	// match person with age older than 50
		  	case { age: _ > 50 => true}:
			    trace('found somebody older than 50');
		  	// match on specific person named Jose who is 42
		  	case { name: "Jose", age: 42  }:
			    trace('Found Jose, who is 42');
		  	// match on name
		  	case { name: name }:
			    trace('Found someone called $name');
		  	// matches anything
		  	case _:
			    trace("unknown");
		}

		trace("");
		trace("---");
		trace("");

		var person1 = { name: "Mark", age: 33 };
		var person2 = { name: "John", age: 45 };

		switch [person1, person2] 
		{
		  	// match if person1 is older than person2
		  	case [{name:name1, age:age1}, {name:name2, age:age2}] 
		  	if (age1 > age2):
			    trace('name1 is older than $name2');
		  	// match on both persons names
		  	case [{name:name1}, {name:name2}]:
			    trace('name1 is youngher than $name2');
		}		

		trace("");
		trace("---");
		trace("");

		Trees.main();
	}
}