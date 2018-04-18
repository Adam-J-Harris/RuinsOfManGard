package 
{	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.utils.getDefinitionByName;
	import flash.media.Sound;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	public class buttonSound extends MovieClip 
	{	
		var timerA:Timer = new Timer(1000/1);
		var timerB:Timer = new Timer(2000/1);
		var timerC:Timer = new Timer(3000/1);
		var timerD:Timer = new Timer(4000/1);
		var randomNumbers:Array = new Array();
		var randomNumbersCopy:Array;
		var clicked:Boolean;
		var SceneLink:Object; 
		var ParentMenu;
		var randomPos:int;
		
		//var number1:int = 1;
		//var number2:int = 2;
		//var number3:int = 3;
		//var number4:int = 4;
		
		//var numberR1:int;
		//var numberR2:int;
		//var numberR3:int;
		//var numberR4:int;
		
		//var SoundA:Boolean = true;
		//var SoundB:Boolean = false;
		//var SoundC:Boolean = false;
		//var SoundD:Boolean = false;
		
		
		var aClass:Class = getDefinitionByName("pianoA") as Class; // Getting "A" note
		var aSound:Sound = new aClass(); 

		var bClass:Class = getDefinitionByName("pianoB") as Class; // Getting "B" note
		var bSound:Sound = new bClass(); 
		
		var cClass:Class = getDefinitionByName("pianoC") as Class; // Getting "C" note
		var cSound:Sound = new cClass(); 
		
		var dClass:Class = getDefinitionByName("pianoD") as Class; // Getting "D" note
		var dSound:Sound = new dClass();
		
		public function buttonSound (Text:String, X:int, Y:int, pMenu) /*(Text:String, X:int, Y:int, pMenu:Object) */
		{
			addEventListener(MouseEvent.CLICK, ClickEvent);
			this.x = X;
			this.y = Y;
			this.sText.text = Text;
			ParentMenu = pMenu; 
			
			timerA.addEventListener(TimerEvent.TIMER, timerASound);
			timerB.addEventListener(TimerEvent.TIMER, timerBSound);
			timerC.addEventListener(TimerEvent.TIMER, timerCSound);
			timerD.addEventListener(TimerEvent.TIMER, timerDSound);
			
			randomNumbers.push(aSound);
			randomNumbers.push(bSound);
			randomNumbers.push(cSound);
			randomNumbers.push(dSound);
			
			randomNumbersCopy = new Array(randomNumbers.length);
			randomPos = 0;
			
			for (var i:int = 0; i < randomNumbers.length; i++)
			{
				randomPos = int(Math.random() * randomNumbers.length);
				
				while (randomNumbersCopy[randomPos] != null)      //repeat as long as the slot is not empty
				{				
					randomPos = int(Math.random() * randomNumbers.length);    //pick a different slot				
				}
				
				randomNumbersCopy[randomPos] = randomNumbers[i];
			}
			
			trace(randomNumbers +"");
			trace(randomNumbersCopy + "");
			
			//numberR1 = randomNumbersCopy[0]; 
			//numberR2 = randomNumbersCopy[1]; 
			//numberR3 = randomNumbersCopy[2]; 
			//numberR4 = randomNumbersCopy[3]; 
			
			//trace(numberR1 +"")
			//trace(numberR2 +"")
			//trace(numberR3 +"")
			//trace(numberR4 +"")
		}
		
		function timerASound(e:TimerEvent)
		{
			//timerA.start();
			trace("TimerA ")
			randomNumbersCopy[0].play();
			timerA.stop();
		}
		function timerBSound(e:TimerEvent)
		{
			//timerB.start();
			trace("TimerB ")
			randomNumbersCopy[1].play();
			timerB.stop();
		}
		function timerCSound(e:TimerEvent)
		{
			//timerC.start();
			trace("TimerC ")
			randomNumbersCopy[2].play();
			timerC.stop();
		}
		function timerDSound(e:TimerEvent)
		{
			//timerD.start();
			trace("TimerD ")
			randomNumbersCopy[3].play();
			timerD.stop();
		}
		
		public function ClickEvent(Text) 
		{
			timerA.start();
			timerB.start();
			timerC.start();
			timerD.start();
			trace("A....B....C....D"); 
		}
		
		public function update()
		{
			
		}
	}	
}



