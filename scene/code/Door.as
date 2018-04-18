package  
{
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	
	public class Door extends MovieClip 
	{
		var mPlayer1;
		var mMap1;
		var mStage;
		var mMusicNotesArray;
		var Counter:int = 0;
		
		public function Door(X:int, Y:int, Width, Height, pMap1, pPlayer1, pStage, pMusicNotesArray) 
		{
			// constructor code
			this.x = X;
			this.y = Y;
			this.width = Width;
			this.height = Height;
			
			mMusicNotesArray = pMusicNotesArray
			mStage = pStage;
			mPlayer1 = pPlayer1;
			mMap1 = pMap1;
			
			mStage.addEventListener(KeyboardEvent.KEY_DOWN, DoorCollision);
			
			/*OneArray.push(1);
			OneArray.push(1);
			OneArray.push(1);
			OneArray.push(1);*/
			//trace(counter);
			//trace(mMusicNotesArray);
			
		}
		public function Swap()
		{			
			if(Counter == 4) // If number of music notes picked up is equal to 4
			{
				DoorRemove();
				mStage.removeEventListener(KeyboardEvent.KEY_DOWN, DoorCollision);
			}
			
			for(var i = 0; i < mMusicNotesArray.length; i++)
			{
				if(mPlayer1.hitTestObject(mMusicNotesArray[i]) == true) // whenever player collides with element in music note array
				{
					Counter++;					
				}				
			}
		}
		
		public function DoorRemove()
		{
			if(mPlayer1.hitTestObject(this) == true)
			{
				mMap1.removeChild(this)
			}
		}
		
		public function DoorCollision(e:KeyboardEvent)
		{
			if(this.hitTestObject(mPlayer1) == true)
			{
				if(e.keyCode == 87)
				{
					// W being pressed
					mMap1.y -= 7;
				}
				
				if(e.keyCode == 83)
				{
					// S being pressed
					mMap1.y += 7;
				}
				
				if(e.keyCode == 68)
				{
					// A being pressed
					mMap1.x += 7;
				}
				
				if(e.keyCode == 65)
				{
					// D being pressed
					mMap1.x -= 7;
				}
			}
		}
		
		public function Update()
		{			
			Swap();
		}
	}
}
