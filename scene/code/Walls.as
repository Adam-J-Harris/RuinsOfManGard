package 
{
	import flash.display.MovieClip;
	
	public class Walls extends MovieClip
	{
		var mMap1;
		var mPlayer1;
		var mEnemyArray;
		
		public function Walls(X:int, Y:int, pMap1, pPlayer1, pEnemyArray) 
		{
			// constructor code
			
			this.x = X;
			this.y = Y;
			
			//this.width = Width;
			//this.height = Height;
			
			mMap1 = pMap1;
			mPlayer1 = pPlayer1;
			mEnemyArray = pEnemyArray;
		}
		
		public function WallsCollision()
		{
			if(mPlayer1.hitTestObject(this) == true)
			{
				trace("hit");
			}
		}
		
		public function Update()
		{
			WallsCollision();
		}
	}
}
