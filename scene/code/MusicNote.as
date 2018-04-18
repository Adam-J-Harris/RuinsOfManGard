package  
{
	import flash.display.MovieClip;	
	import flash.display.Stage;
	
	public class MusicNote extends MovieClip 
	{
		var mPlayer1;
		var mMap1;
		var mMusicNotesArray;
		var mMusicNotesArrayCopy;
		var Collected:Array = new Array(); 
		
		public function MusicNote(X:int, Y:int, pPlayer1, pMap1, pMusicNotesArray) 
		{
			// constructor code
			this.x = X;
			this.y = Y;
			
			mPlayer1= pPlayer1;
			mMap1 = pMap1;	
			mMusicNotesArray = pMusicNotesArray;
			mMusicNotesArrayCopy = mMusicNotesArray;
		}
		
		public function MusicNotePickUp()
		{
			if(mPlayer1.hitTestObject(this) == true)
			{
				trace("Picked up Music Note");
				mMap1.removeChild(this);
			}
		}
		
		public function Update()
		{
			MusicNotePickUp();
		}
	}
}
