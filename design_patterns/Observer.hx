interface Observer 
{
	public function notified(sender:Observable, ?data:Any) : Void;
}

class Observable
{
	private var observers:Array<Observer> = [];

	public function new() {}

	private function notify<T>(?data:T)
	{
		for (obs in observers)
		{
			obs.notified(this, data);
		}
	}

	public function addObserver(observer:Observer)
	{
		observers.push(observer);
	}
}