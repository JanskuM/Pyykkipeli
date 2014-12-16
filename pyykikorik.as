package  {
	
	import flash.display.MovieClip;
	import pyykkikorik;
	import pyykkays;
	import flash.display.Stage;
	import flash.events.Event;
	
	
	public class pyykkikorik extends MovieClip {
		
		public function pyykkikorik() {
			
			//lisätään ENTER_FRAME kuuntelija, joka kutsuu loop-metodia jokaisella framella
			addEventListener(Event.ENTER_FRAME, loop, false, 0, true);
		}
		
		private function loop(e:Event) : void
		{
			//tämä loop metodi ajetaan pelissä jokaisella framella eli 24 krt/sekunnissa
			trace("In pyykkikorik loop")
			for (var i:int = 0; i < pyykkays.PyykkiLista.length; i++)
			{
				trace("Pyykki:"pyykkays.PyykkiLista[i])
				if (hitTestObject(pyykkays.PyykkiLista[i].hitBox))
				{
					trace("hitPyykkikori");
					pyykkays.PyykkiLista[i].takeHit();
				}
			}
		}
		
	}
	
}