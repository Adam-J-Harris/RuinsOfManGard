package  
{
	
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	
	public class CollidingWallProto extends MovieClip
	{
		var mPlayer1;
		var mMap1;
		var mStage;
		var mEnemyArray;
		var EnemyStunned:Boolean = false;
		
		public function CollidingWallProto(X:int, Y:int, Width, Height,  pMap1, pPlayer1, pStage, pEnemyArray)
		{
			// constructor code
			this.x = X;
			this.y = Y;
			this.width = Width;
			this.height = Height;
			
			mStage = pStage;
			mStage.addEventListener(KeyboardEvent.KEY_DOWN, PlayerWallCollision);
			
			mPlayer1 = pPlayer1;
			mMap1 = pMap1;
			mEnemyArray = pEnemyArray;
		}
		
		public function PlayerWallCollision(e:KeyboardEvent)
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

			if(EnemyStunned == true)
			{
				trace("Enemy Stunned");
				mEnemyArray.EnemySpeed = 2;
			}
		}
	}
	
}
