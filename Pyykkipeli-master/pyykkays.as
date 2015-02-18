package
{
	import flash.display.Bitmap;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	import flash.text.*;
	import flash.ui.Mouse;
	import flash.ui.MouseCursor;
	import flash.utils.*;
	
	import tavarat.hitBox;
	import tavarat.pyykki1;
	import tavarat.pyykki10;
	import tavarat.pyykki11;
	import tavarat.pyykki12;
	import tavarat.pyykki13;
	import tavarat.pyykki14;
	import tavarat.pyykki15;
	import tavarat.pyykki16;
	import tavarat.pyykki17;
	import tavarat.pyykki18;
	import tavarat.pyykki19;
	import tavarat.pyykki2;
	import tavarat.pyykki20;
	import tavarat.pyykki21;
	import tavarat.pyykki22;
	import tavarat.pyykki23;
	import tavarat.pyykki24;
	import tavarat.pyykki25;
	import tavarat.pyykki26;
	import tavarat.pyykki27;
	import tavarat.pyykki28;
	import tavarat.pyykki29;
	import tavarat.pyykki3;
	import tavarat.pyykki30;
	import tavarat.pyykki4;
	import tavarat.pyykki5;
	import tavarat.pyykki6;
	import tavarat.pyykki7;
	import tavarat.pyykki8;
	import tavarat.pyykki9;

	public class pyykkays extends Sprite
	{
		public var luoPyykitID:uint;
		public var gameSpeed:uint;
		public var pisteet:int = 0;
		public var yhtPisteet:String = "Pisteet: " + pisteet;
		
		public var pyykki_1:pyykki1 = new pyykki1(stage);
		public var pyykki_2:pyykki2 = new pyykki2(stage);
		public var pyykki_3:pyykki3 = new pyykki3(stage);
		public var pyykki_4:pyykki4 = new pyykki4(stage);
		public var pyykki_5:pyykki5 = new pyykki5(stage);
		public var pyykki_6:pyykki6 = new pyykki6(stage);
		public var pyykki_7:pyykki7 = new pyykki7(stage);
		public var pyykki_8:pyykki8 = new pyykki8(stage);
		public var pyykki_9:pyykki9 = new pyykki9(stage);
		public var pyykki_10:pyykki10 = new pyykki10(stage);
		public var pyykki_11:pyykki11 = new pyykki11(stage);
		public var pyykki_12:pyykki12 = new pyykki12(stage);
		public var pyykki_13:pyykki13 = new pyykki13(stage);
		public var pyykki_14:pyykki14 = new pyykki14(stage);
		public var pyykki_15:pyykki15 = new pyykki15(stage);
		public var pyykki_16:pyykki16 = new pyykki16(stage);
		public var pyykki_17:pyykki17 = new pyykki17(stage);
		public var pyykki_18:pyykki18 = new pyykki18(stage);
		public var pyykki_19:pyykki19 = new pyykki19(stage);
		public var pyykki_20:pyykki20 = new pyykki20(stage);
		public var pyykki_21:pyykki21 = new pyykki21(stage);
		public var pyykki_22:pyykki22 = new pyykki22(stage);
		public var pyykki_23:pyykki23 = new pyykki23(stage);
		public var pyykki_24:pyykki24 = new pyykki24(stage);
		public var pyykki_25:pyykki25 = new pyykki25(stage);
		public var pyykki_26:pyykki26 = new pyykki26(stage);
		public var pyykki_27:pyykki27 = new pyykki27(stage);
		public var pyykki_28:pyykki28 = new pyykki28(stage);
		public var pyykki_29:pyykki29 = new pyykki29(stage);
		public var pyykki_30:pyykki30 = new pyykki30(stage);
		
		
		//luodaan Array eli taulukko jonka avulla pidetään kirjaa peliin lisättävistä pyykeistä
		public static var PyykkiLista:Array = new Array();
		private var kirjo:pyykkikorik = new pyykkikorik();
		
		public function pyykkays()
		{
			kirjo.mouseEnabled = false;
			gameSpeed = 500;
			Mouse.hide();
			this.addEventListener(MouseEvent.ROLL_OUT,outKirjo);
			this.addEventListener(MouseEvent.ROLL_OVER,overKirjo);
			this.addEventListener(MouseEvent.MOUSE_MOVE,moveKirjo);
			
			kirjo.addEventListener(Event.ENTER_FRAME, handleCollision);
		
			//luo ENTER_FRAME kuuntelija ja kutsu pudotaPyykit metodia joka framella eli 24 krt/s
			addEventListener(Event.ENTER_FRAME,pudotaPyykit, false, 0, true);
		}
			
		public function handleCollision(event:Event):void
		{
				
			for ( var i = PyykkiLista.length - 1; i >= 0; i--)
			{
				if ( kirjo.hitTestObject( PyykkiLista[i].hitBox))
				{
					if (String(PyykkiLista[i])==String(pyykki_4))// pitääs pyykit 4,5,9,11,12,16,18,20,22 ja 26 ilmoittaa "oikeiksi".
					{
						trace("pyykki "+PyykkiLista[i]);
					}
					
					else if (String(PyykkiLista[i])==String(pyykki_5))
					{
						trace("pyykki" + PyykkiLista[i]);
					}
					
					else if (String(PyykkiLista[i])==String(pyykki_9))
					{
						trace("pyykki" + PyykkiLista[i]);
					}
					
					else if (String(PyykkiLista[i])==String(pyykki_11))
					{
						trace("pyykki" + PyykkiLista[i]);
					}
					
					else if (String(PyykkiLista[i])==String(pyykki_12))
					{
						trace("pyykki" + PyykkiLista[i]);
					}
					
					else if (String(PyykkiLista[i])==String(pyykki_16))
					{
						trace("pyykki" + PyykkiLista[i]);
					}
					
					else if (String(PyykkiLista[i])==String(pyykki_18))
					{
						trace("pyykki" + PyykkiLista[i]);
					}
					
					else if (String(PyykkiLista[i])==String(pyykki_20))
					{
						trace("pyykki" + PyykkiLista[i]);
					}
					
					else if (String(PyykkiLista[i])==String(pyykki_22))
					{
						trace("pyykki" + PyykkiLista[i]);
					}
					
					else if (String(PyykkiLista[i])==String(pyykki_26))
					{
						trace("pyykki" + PyykkiLista[i]);
					}
					
					else
					{
						trace("pyykki" + PyykkiLista[i]);
					}
					trace("osui! ");
					
					poistaPyykit(event);
				}
			}
		}
		
		public function outKirjo(event:MouseEvent):void
		{
			if(this.contains(kirjo)){
				Mouse.show();
			}
		}
		
		public function overKirjo(event:MouseEvent):void
		{
			this.addChild(kirjo);
			kirjo.x=stage.mouseX;
			kirjo.y=stage.y + 445;
			Mouse.hide();
		}
		
		public function moveKirjo(event:MouseEvent):void
		{
			kirjo.x=stage.mouseX;
			kirjo.y=stage.y + 445;
			event.updateAfterEvent();
		}
		
		public function pudotaPyykit(event:Event):void
		
		{

			//Luodaan satunnainen kokonaisluku.
			var SatunnainenKokonaisluku:Number = Math.floor(Math.random()* 300)
			
			//Jos SatunnainenKokonaisluku == 5, luodaan pyykki1 joka lähtee kiihtymällä putoamaan pyykki1.as luokan mukaisesti
			if (SatunnainenKokonaisluku == 1)
			{
				trace(SatunnainenKokonaisluku);					
				//luo kuuntelija pyykin poistumiselle stagelta
				pyykki_1.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
				
				//lisää pyykki PyykkiListaan ja stagelle
				PyykkiLista.push(pyykki_1);
				stage.addChild(pyykki_1);
			}
			
			if(SatunnainenKokonaisluku == 10)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_2.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_2);
				stage.addChild(pyykki_2);
			}
			
			//Jos SatunnainenKokonaisluku == 3, luodaan pyykki3 joka lähtee kiihtymällä putoamaan pyykki3.as luokan mukaisesti
			if(SatunnainenKokonaisluku == 20)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_3.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_3);
				stage.addChild(pyykki_3);
			}
			
			if(SatunnainenKokonaisluku == 30)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_4.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_4);
				stage.addChild(pyykki_4);
			}
			
			//Jos SatunnainenKokonaisluku == 5, luodaan pyykki1 joka lähtee kiihtymällä putoamaan pyykki1.as luokan mukaisesti
			if(SatunnainenKokonaisluku == 40)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_5.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_5);
				stage.addChild(pyykki_5);
			}
			
			if(SatunnainenKokonaisluku == 50)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_6.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_6);
				stage.addChild(pyykki_6);
			}
			
			if(SatunnainenKokonaisluku == 60)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_7.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_7);
				stage.addChild(pyykki_7);
			}
			
			if(SatunnainenKokonaisluku == 70)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_8.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_8);
				stage.addChild(pyykki_8);
			}
			
			if(SatunnainenKokonaisluku == 80)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_9.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_9);
				stage.addChild(pyykki_9);
			}
			
			if (SatunnainenKokonaisluku == 90)
			{
				trace(SatunnainenKokonaisluku);
			
				//luo kuuntelija pyykin poistumiselle stagelta
				pyykki_10.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				//lisää pyykki PyykkiListaan ja stagelle
				PyykkiLista.push(pyykki_10);
				stage.addChild(pyykki_10);
			}
			
			if(SatunnainenKokonaisluku == 100)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_11.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_11);
				stage.addChild(pyykki_11);
			}
			if(SatunnainenKokonaisluku == 110)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_12.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_12);
				stage.addChild(pyykki_12);
			}
			
			if(SatunnainenKokonaisluku == 120)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_13.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_13);
				stage.addChild(pyykki_13);
			}
			
			if(SatunnainenKokonaisluku == 130)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_14.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_14);
				stage.addChild(pyykki_14);
			}
			
			if(SatunnainenKokonaisluku == 140)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_15.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_15);
				stage.addChild(pyykki_15);
			}
			
			if(SatunnainenKokonaisluku == 150)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_16.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_16);
				stage.addChild(pyykki_16);
			}
			
			if(SatunnainenKokonaisluku == 160)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_17.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_17);
				stage.addChild(pyykki_17);
			}
			
			if(SatunnainenKokonaisluku == 170)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_18.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_18);
				stage.addChild(pyykki_18);
			}
			
			if(SatunnainenKokonaisluku == 180)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_19.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_19);
				stage.addChild(pyykki_19);
			}
			
			if(SatunnainenKokonaisluku == 190)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_20.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_20);
				stage.addChild(pyykki_20);
			}
			
			if(SatunnainenKokonaisluku == 200)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_21.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_21);
				stage.addChild(pyykki_21);
			}
			
			if(SatunnainenKokonaisluku == 210)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_22.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_22);
				stage.addChild(pyykki_22);
			}
			
			if(SatunnainenKokonaisluku == 220)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_23.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_23);
				stage.addChild(pyykki_23);
			}
			
			if(SatunnainenKokonaisluku == 230)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_24.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_24);
				stage.addChild(pyykki_24);
			}
			
			if(SatunnainenKokonaisluku == 240)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_25.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_25);
				stage.addChild(pyykki_25);
			}
			
			if(SatunnainenKokonaisluku == 250)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_26.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_26);
				stage.addChild(pyykki_26);
			}
			
			if(SatunnainenKokonaisluku == 260)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_27.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_27);
				stage.addChild(pyykki_27);
			}
			
			if(SatunnainenKokonaisluku == 270)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_28.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_28);
				stage.addChild(pyykki_28);
			}
			
			if(SatunnainenKokonaisluku == 280)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_29.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_29);
				stage.addChild(pyykki_29);
			}
			
			if(SatunnainenKokonaisluku == 300)
			{
				trace(SatunnainenKokonaisluku);
				
				pyykki_30.addEventListener(Event.REMOVED_FROM_STAGE, poistaPyykit, false, 0, true);
			
				PyykkiLista.push(pyykki_30);
				stage.addChild(pyykki_30);
			}

			
		}
		
		//suoritetaan kun pyykki poistuu stagelta
		private function poistaPyykit(event:Event)
		{
			PyykkiLista.splice(PyykkiLista.indexOf(event.currentTarget), 1);
		}
	}
}