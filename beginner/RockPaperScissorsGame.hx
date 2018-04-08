using haxe.EnumTools;

enum RockPaperScissorsMove
{
	Rock;
	Paper;
	Scissors;
}

class RockPaperScissorsPlayer
{
	public var name : String;
	public var move : RockPaperScissorsMove;

	public function new(name:String, move:RockPaperScissorsMove)
	{
		this.name = name;
		this.move = move;
	}
}

class RockPaperScissorsGame
{
	private var playerA : RockPaperScissorsPlayer;
	private var playerB : RockPaperScissorsPlayer;

	private function getRandomMove() : RockPaperScissorsMove
	{
		return RockPaperScissorsMove.createByIndex(
			Std.random(Type.allEnums(RockPaperScissorsMove).length));
	}

	public function assignNewRandomMoves() : Void
	{
		playerA.move = getRandomMove();
		playerB.move = getRandomMove();
	}

	public function new(
		playerAName:String, 
		playerBName:String, 
		?playerAMove:RockPaperScissorsMove, 
		?playerBMove:RockPaperScissorsMove)
	{
		if (playerAMove == null)
		{
			playerAMove = getRandomMove();
		}

		if (playerBMove == null)
		{
			playerBMove = getRandomMove();
		}

		this.playerA = new RockPaperScissorsPlayer(playerAName, playerAMove);
		this.playerB = new RockPaperScissorsPlayer(playerBName, playerBMove);
	}

	public function play() : RockPaperScissorsPlayer
	{
		switch [playerA.move, playerB.move]
		{
			case [Rock, Paper] | [Paper, Scissors] | [Scissors, Rock]: return playerB;
			case [Rock, Scissors] | [Paper, Rock] | [Scissors, Paper]: return playerA;
			default : return null;
		}
	}
}

