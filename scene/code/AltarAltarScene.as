package  
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.utils.getDefinitionByName;
	import flash.media.Sound;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	public class AltarAltarScene extends MovieClip 
	{
		var mMusicNotesArray:Object;
		var mNoteHolderArray:Object;
		var counter:int = 0;
		
		public function AltarAltarScene(X:int, Y:int, pMusicNotesArray:Object, pNoteHolderArray:Object)
		{
			// constructor code
			this.x = X;
			this.y = Y;
			
			mMusicNotesArray = pMusicNotesArray;
			mNoteHolderArray = pNoteHolderArray;
		}
		
		public function hit()
		{
			
		}
		
		public function Update()
		{
			hit();
		}
	}
}
