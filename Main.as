﻿package 
{
	import starling.display.Sprite;
	import starling.events.Event;
	import feathers.controls.Drawers;
	
	import feathers.themes.MinimalMobileTheme;
	import feathers.themes.MetalWorksMobileTheme;
	import feathers.controls.ScreenNavigator;
	import feathers.controls.ScreenNavigatorItem;
	import feathers.controls.Screen;
	import feathers.controls.ScrollContainer;
	import feathers.events.FeathersEventType;
	
	public class Main extends ScreenNavigator
	{

		public function Main() 
		{
			// constructor code
		this.addEventListener(FeathersEventType.INITIALIZE, initalizehandler);
		}
			private function initalizehandler(e:Event):void			
			{
				this.removeEventListener(FeathersEventType.INITIALIZE, initalizehandler);
				
				new MetalWorksMobileTheme();
				
				var screenA:ScreenA = new ScreenA();
				
				var screenNavItem1:ScreenNavigatorItem = new ScreenNavigatorItem(screenA,{"showScreenB":"screenB"});
																				 
					this.addScreen("screenA", screenNavItem1);
					
				var screenB:ScreenB = new ScreenB();
				
				var screenNavItem2:ScreenNavigatorItem = new ScreenNavigatorItem(screenB, {"showScreenA":"screenA"});
				
					this.addScreen("screenB", screenNavItem2);
					
					this.showScreen("screenA");
				}			
		}
}
