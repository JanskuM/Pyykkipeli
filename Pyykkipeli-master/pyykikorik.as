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
			
			
		}
		
	}
	
}