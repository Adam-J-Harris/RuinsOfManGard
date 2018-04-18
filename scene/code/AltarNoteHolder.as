package  
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.utils.getDefinitionByName;
	import flash.media.Sound;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	public class AltarNoteHolder extends MovieClip 
	{
		var mMusicNotesArray;
		var mdragged;
		
		var aClass:Class = getDefinitionByName("pianoA") as Class; // Getting "A" note
		var aSound:Sound = new aClass(); 
		
		var bClass:Class = getDefinitionByName("pianoB") as Class; // Getting "B" note
		var bSound:Sound = new bClass(); 
		
		var cClass:Class = getDefinitionByName("pianoC") as Class; // Getting "C" note
		var cSound:Sound = new cClass();
		
		var dClass:Class = getDefinitionByName("pianoD") as Class; // Getting "D" note
		var dSound:Sound = new dClass();		
		
		var Bool1 = false;
		var Bool2 = false;
		var Bool3 = false;
		var Bool4 = false;
		
		var counterPassed:int = 0;
		
		var ParentMenu;
		var SceneLink:Object; 
		
		var EndTrue:Boolean = false;
		
		public function AltarNoteHolder(X:int,Y:int, pMusicNotesArray, pdragged, pMenu) 
		{
			// constructor code
			mdragged = pdragged;
			mMusicNotesArray = pMusicNotesArray;	
			
			ParentMenu = pMenu;
			
			this.x = X;
			this.y = Y;
		}
		
		public function Collision()
		{
			var centerYHolder = stage.stageHeight/2;
			var centerXHolder = stage.stageWidth/2;
		
			if(mMusicNotesArray[0].hitTestObject(this) == true)
			{
				trace("A");

				if(mdragged == false)
				{
					aSound.play();
				}
					mMusicNotesArray[0].y = centerYHolder;
					//mMusicNotesArray[0].x = 200;
					
				mdragged = true;
				
				Bool1 = true;
				
				if (Bool1 == true)
				{
					counterPassed = 1;
				}
				else
				{
					counterPassed -=1;
				}
				
			}
			if(mMusicNotesArray[1].hitTestObject(this) == true)
			{
				trace("B");
				if(mdragged == false)
				{
					bSound.play();
				}
					mMusicNotesArray[1].y = centerYHolder;
					//mMusicNotesArray[1].x = 325;
					
				mdragged = true;
				
				Bool2 = true;
				
				if (Bool2 == true)
				{
					counterPassed = 2;
				}
				else
				{
					counterPassed -=1;
				}
			}
			if(mMusicNotesArray[2].hitTestObject(this) == true)
			{	
				trace("C");
				if(mdragged == false)
				{
					cSound.play();
				}
				
					mMusicNotesArray[2].y = centerYHolder;
					//mMusicNotesArray[2].x = 450;
					
				mdragged = true;
				
				Bool3 = true;
				
				if (Bool3 == true)
				{
					counterPassed = 3;
				}
				else
				{
					counterPassed -=1;
				}
				
			}
			if(mMusicNotesArray[3].hitTestObject(this) == true)
			{
				trace("D");
				if(mdragged == false)
				{
					dSound.play();
				}
				
					mMusicNotesArray[3].y = centerYHolder;
					//mMusicNotesArray[3].x = 575;
				
				mdragged = true;
				
				Bool4 = true;
				
				if (Bool4 == true)
				{
					counterPassed = 4;
				}
				else
				{
					counterPassed -=1;
				}
			}
		}
		public function ChangeScene ()
		{
			if (counterPassed == 4)
			{
				ParentMenu.NextScene = SceneLink;
				SceneLink.Unloading = true;
				
			}
		}
		
		public function Update()
		{
			Collision();
			ChangeScene();

		}
	}
}
