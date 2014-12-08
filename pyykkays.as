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
	import tavarat.pyykki11;
	import tavarat.pyykki12;
	import tavarat.pyykki13;
	import tavarat.pyykki14;
	import tavarat.pyykki15;
	
	
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
			if (SatunnainenKokonaisluku == 1)
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
			if (SatunnainenKokonaisluku == 10)
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
			
			if(SatunnainenKokonaisluku == 11)
			{
				trace(SatunnainenKokonaisluku);
				var pyykki_11:pyykki11 = new pyykki11(stage);
				pyykki_11.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
				
				PyykkiLista.push(pyykki_11);
				stage.addChild(pyykki_11);
			}
			if(SatunnainenKokonaisluku == 12)
			{
				trace(SatunnainenKokonaisluku);
				var pyykki_12:pyykki12 = new pyykki12(stage);
				pyykki_12.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
				
				PyykkiLista.push(pyykki_12);
				stage.addChild(pyykki_12);
			}
			
			if(SatunnainenKokonaisluku == 13)
			{
				trace(SatunnainenKokonaisluku);
				var pyykki_13:pyykki13 = new pyykki13(stage);
				pyykki_13.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
				
				PyykkiLista.push(pyykki_13);
				stage.addChild(pyykki_13);
			}
			
			if(SatunnainenKokonaisluku == 14)
			{
				trace(SatunnainenKokonaisluku);
				var pyykki_14:pyykki14 = new pyykki14(stage);
				pyykki_14.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
				
				PyykkiLista.push(pyykki_14);
				stage.addChild(pyykki_14);
			}
			
			if(SatunnainenKokonaisluku == 15)
			{
				trace(SatunnainenKokonaisluku);
				var pyykki_15:pyykki15 = new pyykki15(stage);
				pyykki_15.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
				
				PyykkiLista.push(pyykki_15);
				stage.addChild(pyykki_15);
			}

		}
		
		//suoritetaan kun pyykki poistuu stagelta
		private function poistaPyykit(event:Event)
		{
			PyykkiLista.splice(PyykkiLista.indexOf(event.currentTarget), 1);
		}
	}
}