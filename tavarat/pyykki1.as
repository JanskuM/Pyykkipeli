package tavarat
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	
	import pyykkikorik;
	import tavarat.hitBox;
	
	public class pyykki1 extends MovieClip
	{
		
		private var stageRef:Stage;
		private var target:pyykkikorik = new pyykkikorik();
		private var vy:Number = 3; //y nopeus
		private var ay:Number = .4; //y kiihtyvyys
		
		
		public function pyykki1(stageRef:Stage) : void
		{
			this.stageRef = stageRef;
		
			x = Math.random() * stageRef.stageWidth/2 + 120;
			y = -5;
			
			//lisätään ENTER_FRAME kuuntelija, joka kutsuu loop-metodia jokaisella framella
			addEventListener(Event.ENTER_FRAME, loop, false, 0, true);
		}
		
		private function loop(event:Event) : void
		{
			//tämä loop metodi ajetaan pelissä jokaisella framella eli 24 krt/sekunnissa
			
			//kasvatetaan pyykin nopeutta kiihtyvyyden arvolla jokaisella framella
			vy += ay;
			y += vy;
			
			//pyykki poistaa itsensä ja ENTER_FRAME kuuntelijan poistuessaan stagelta
			if (y > stageRef.stageHeight)
				removeSelf();
			
			addEventListener(Event.ENTER_FRAME, handleCollision);
		}
		
		private function removeSelf() : void {
			
			removeEventListener(Event.ENTER_FRAME, loop);
			
			if (stageRef.contains(this))
				stageRef.removeChild(this);
		}
		
		private function hitTest():Boolean
		{
			return false;
		}
		
		public function handleCollision(event:Event) : void
		{
			/*var hit:hitBox = new hitBox();
			
			if(hit(pyykkikorik))
			{
			trace("HIT");
				removeSelf();
			}*/
		}
		
	}
	
}
