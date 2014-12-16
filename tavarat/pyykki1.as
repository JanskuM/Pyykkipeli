package tavarat
{
<<<<<<< HEAD
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event;
	import pyykkikorik;
=======
	import flash.display.MovieClip
	import flash.display.Stage;
	import flash.events.Event;
>>>>>>> origin/master
	
	public class pyykki1 extends MovieClip
	{
		
		private var stageRef:Stage;
<<<<<<< HEAD
		private var target:pyykkikorik = new pyykkikorik();
=======
>>>>>>> origin/master
		private var vy:Number = 3; //y nopeus
		private var ay:Number = .4; //y kiihtyvyys
		
		
		public function pyykki1(stageRef:Stage) : void
		{
			this.stageRef = stageRef;
<<<<<<< HEAD
		
			x = Math.random() * stageRef.stageWidth/2 + 120;
=======
			
			x = Math.random() * stageRef.stageWidth;
>>>>>>> origin/master
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
<<<<<<< HEAD
			
			/*if (hitTestObject(target))
			{
				trace("hitME");
				removeSelf();
			}*/
=======
>>>>>>> origin/master
		}
		
		private function removeSelf() : void {
			
			removeEventListener(Event.ENTER_FRAME, loop);
			
			if (stageRef.contains(this))
				stageRef.removeChild(this);
		}
		
<<<<<<< HEAD
		public function takeHit() : void
		{
			removeSelf();
		}
		
=======
>>>>>>> origin/master
	}
	
}
