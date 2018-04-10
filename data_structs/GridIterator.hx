class GridIterator
{
	var gridWidth : Int = 0;
	var gridHeight : Int = 0;
	var i : Int = 0;

	public inline function new(gridWidth:Int, gridHeight:Int)
	{
		this.gridWidth = gridWidth;
		this.gridHeight = gridHeight;
	}

	public inline function size()
	{
		return gridWidth * gridHeight;
	}

	public inline function hasNext()
	{
		return i < size();
	}

	public inline function next()
	{
		return new GridIteratorObject(i++, gridWidth);
	}

	public static function main() : Void
	{
		// test
		var tileSize = 50;
        var tileMargin = 3;
        for (grid in new GridIterator(6, 5)) 
        {
        	// !Need to target js! //

        	// var div = js.Browser.document.createDivElement();
            // div.style.width = tileSize + "px";
            // div.style.height = tileSize + "px";
            // div.style.position = "absolute";
            // div.style.left = (grid.x * (tileSize+tileMargin)) + "px";
            // div.style.top = (grid.y * (tileSize+tileMargin)) + "px";
            // div.style.background = "#333";
            
			// js.Browser.document.body.appendChild(div);
        }
	}
}

class GridIteratorObject
{
	public var index(default, null) : Int;
	public var x(default, null) : Int;
	public var y(default, null) : Int;

	public inline function new(index:Int, gridWidth:Int)
	{
		this.index = index;
		this.x = index % gridWidth;
		this.y = Std.int(index / gridWidth);
	}
}