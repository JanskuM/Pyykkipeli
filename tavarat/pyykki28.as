package tavarat
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	
	public class pyykki28 extends MovieClip
	{
		private var stageRef:Stage;
		private var vy:Number = 3; //y nopeus
		private var ay:Number = .2; //y kiihtyvyys
		
		
		public function pyykki28(stageRef:Stage):void
		{
			this.stageRef = stageRef;
			
			x = Math.random() * stageRef.stageWidth/2 + 120;
			y = -5;
			
			//lisätään ENTER_FRAME kuuntelija, joka kutsuu loop-metodia jokaisella framella
			addEventListener(Event.ENTER_FRAME, loop, false, 0, true);
		}
		
		private function loop(e:Event) : void
		{
			//tämä loop metodi ajetaan pelissä jokaisella framella eli 24 krt/sekunnissa
			
			//kasvatetaan pyykin nopeutta kiihtyvyyden arvolla jokaisella framella
			vy += ay;
			y += vy;
			
			//pyykki poistaa itsensä ja ENTER_FRAME kuuntelijan poistuessaan stagelta
			if (y > stageRef.stageHeight)
				removeSelf();
		}
		
		private function removeSelf() : void {
			
			removeEventListener(Event.ENTER_FRAME, loop);
			
			if (stageRef.contains(this))
				stageRef.removeChild(this);	
		}
	}
}