package 
{
	import flash.display.Sprite;
	import starling.core.Starling;
	import flash.events.Event;
	import flash.geom.Rectangle;
	
	public class FeaterPagesII extends Sprite
	{
		private var _starling:Starling;
		public function FeaterPagesII()
		{
		// constructor code
		_starling = new Starling(Main, this.stage);
		
		this._starling.enableErrorChecking = true;
		
		_starling.start();
		}
	
	}
}