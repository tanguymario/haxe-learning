class Base64Encoding
{
	public static function main() : Void
	{
		var myString = "Hello World!";
		var encoded = 
			haxe.crypto.Base64.encode(haxe.io.Bytes.ofString(myString));
		trace(encoded);
		var decoded = haxe.crypto.Base64.decode(encoded).toString();
		trace(decoded);

		var myString = "Hello world!";
		var charset = haxe.crypto.Base64.CHARS;
		var baseCode = 
			new haxe.crypto.BaseCode(haxe.io.Bytes.ofString(charset));
		var encoded = baseCode.encodeString(myString);
		trace(encoded);  // SGVsbG8gd29ybGQh
		var decoded = baseCode.decodeString(encoded);
		trace(decoded); // Hello world!

		var myString = "Hello world!";
		var charset = "1ILi";
		var baseCode = new haxe.crypto.BaseCode(haxe.io.Bytes.ofString(charset));
		var encoded = baseCode.encodeString(myString);
		trace(encoded);  // I1L1ILIIILi1ILi1ILii1L11IiIiILiiIi1LILi1ILI11L1I
		var decoded = baseCode.decodeString(encoded);
		trace(decoded); // Hello world!		

		var myString = "Hello world!";
		var charset = "1ILi";
		var baseCode = new haxe.crypto.BaseCode(haxe.io.Bytes.ofString(charset));
		var encoded = baseCode.encodeString(myString);
		trace(encoded);  // I1L1ILIIILi1ILi1ILii1L11IiIiILiiIi1LILi1ILI11L1I
		var decoded = baseCode.decodeString(encoded);
		trace(decoded); // Hello world!
	}
}