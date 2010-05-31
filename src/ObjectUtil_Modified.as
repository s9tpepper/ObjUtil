package
{
	import almerblank.flash.utils.ObjUtil;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class ObjectUtil_Modified extends Sprite
	{
		public function ObjectUtil_Modified()
		{
			addEventListener( Event.ADDED_TO_STAGE, onAddedToStage, false, 0, true );
		}

		private function onAddedToStage(event:Event):void
		{
			var example:Object = new Object();
				example.name = "example: Level 1";
				
			var deeper:Object = new Object();
				deeper.name = "deeper: Level 2";
			
			example.level = deeper;
			
			var evenDeeper:Object = new Object();
				evenDeeper.name = "evenDeeper: Level 3";
			deeper.evenDeeper = evenDeeper;
			
			deeper.infiniteLoop = example;
			
			trace( "ObjUtil.toString( example, 2 ); = " + ObjUtil.toString( example, 2 ) );
		}
	}
}