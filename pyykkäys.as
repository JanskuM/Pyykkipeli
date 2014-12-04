package
{
	import Image.Image;
	
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.ui.Mouse;
	import flash.ui.MouseCursor;
	
	public class pyykkäys extends Sprite
	{
		var kirjo:Bitmap;
		var luoPyykitID:uint;
		var gameSpeed:uint;
		
		public function pyykkäys()
		{
			kirjo:Bitmap = new Mouse();
			kirjo.x = 320;
			kirjo.y = 25;
			gameSpeed = 500;
			this.addChild(kirjo);
			Mouse.hide();
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveKirjo);
			luoPyykitID = setInterval(luoPyykit, gameSpeed);
		}
import flash.events.Event;
		
		public function moveKirjo(event:Event):void
		{
			kirjo.x = this.mouseX;
			event.updateAfterEvent();
		}
		
		public function luoPyykit(event:Event):void
		{
			var pyykit:Object = new Object();
			pyykit.y = -50;
			pyykit.x = Math.random()*this.stage.StageWidth-5;
			pyykit.addEventListener(Event.ENTER_FRAME,pudotaPyykit);
		}
		
		public function pudotaPyykit(event:Event):void
		{
			var mc:Object = Object(event:target);
			mc.y = 10;
		}
	}
}