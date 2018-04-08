class Maps
{
	public static function main() : Void
	{
		var ageByUser = new Map<String, Int>();
		ageByUser["John"] = 26;
		ageByUser.set("Mark", 21);

		ageByUser = [
			"John" => 26,
			"Mark" => 21
		];

		trace(ageByUser["John"]);
		trace(ageByUser.get("Mark"));

		if (ageByUser.exists("Simon"))
		{
			trace(ageByUser["Simon"]);
		} 
		else 
		{
			trace("Simon does not exist");
		}

		for (user in ageByUser.keys()) 
		{
  			trace(user + ": " + ageByUser[user]);
		}
	}
}