package
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.ui.Mouse;
	import flash.ui.MouseCursor;
	import flash.utils.*;
	
	import tavarat.pyykki1;
	import tavarat.pyykki10;
	
	public class pyykkays extends Sprite
	{
		public var luoPyykitID:uint;
		public var gameSpeed:uint;
		public var kirjo:pyykkikorik = new pyykkikorik();
		
		//luodaan Array eli taulukko jonka avulla pidetään kirjaa peliin lisättävistä pyykeistä
		private var PyykkiLista:Array = new Array();
		
		public function pyykkays()
		{
			kirjo.mouseEnabled=false;
			gameSpeed = 500;
			Mouse.hide();
			this.addEventListener(MouseEvent.ROLL_OUT,outKirjo);
			this.addEventListener(MouseEvent.ROLL_OVER,overKirjo);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveKirjo);
			
			//luo ENTER_FRAME kuuntelija ja kutsu pudotaPyykit metodia joka framella eli 24 krt/s
			addEventListener(Event.ENTER_FRAME,pudotaPyykit, false, 0, true);
		}
		
		public function outKirjo(event:MouseEvent):void
		{
			if(this.contains(kirjo)){
				this.removeChild(kirjo);
				Mouse.show();
			}
		}
		
		public function overKirjo(event:MouseEvent):void
		{
			this.addChild(kirjo);
			kirjo.x=stage.mouseX;
			kirjo.y=stage.mouseY;
			Mouse.hide();
		}
		
		public function moveKirjo(event:MouseEvent):void
		{
			kirjo.x=stage.mouseX;
			kirjo.y=stage.mouseY;
			event.updateAfterEvent();
		}
		
		public function pudotaPyykit(event:Event):void
		
		{
			//Luodaan satunnainen kokonaisluku.
			var SatunnainenKokonaisluku:Number = Math.floor(Math.random() * 90)
			
			//Jos SatunnainenKokonaisluku == 5, luodaan pyykki1 joka lähtee kiihtymällä putoamaan pyykki1.as luokan mukaisesti
			if (SatunnainenKokonaisluku == 5)
			{
				trace(SatunnainenKokonaisluku);
				//luo pyykki1
				var pyykki_1:pyykki1 = new pyykki1(stage);
				
				//luo kuuntelija pyykin poistumiselle stagelta
				pyykki_1.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
				
				//lisää pyykki PyykkiListaan ja stagelle
				PyykkiLista.push(pyykki_1);
				stage.addChild(pyykki_1);
			}
			
			//Jos SatunnainenKokonaisluku == 3, luodaan pyykki10 joka lähtee kiihtymällä putoamaan pyykki10.as luokan mukaisesti
			if (SatunnainenKokonaisluku == 3)
			{
				trace(SatunnainenKokonaisluku);
				//luo pyykki10
				var pyykki_10:pyykki10 = new pyykki10(stage);
				
				//luo kuuntelija pyykin poistumiselle stagelta
				pyykki_10.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
				
				//lisää pyykki PyykkiListaan ja stagelle
				PyykkiLista.push(pyykki_10);
				stage.addChild(pyykki_10);
			}
			
		}
		
		//suoritetaan kun pyykki poistuu stagelta
		private function poistaPyykit(event:Event)
		{
			PyykkiLista.splice(PyykkiLista.indexOf(event.currentTarget), 1);
		}
	}
}