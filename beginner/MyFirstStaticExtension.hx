class FloatTools
{
	public static function round2(f : Float)
	{
		return Math.round(f * 100) / 100;

		// using FloatTools;
		// 0.1199.round2(); -> 0.12
	}
}