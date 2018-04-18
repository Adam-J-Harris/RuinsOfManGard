package 
{	
	import flash.display.MovieClip;	
	import flash.geom.Vector3D;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	public class Enemy extends MovieClip
	{		
		var pPlayer1;
		var pMap1;
		var pStage1;
		var pWallsArray;
		
		var centerX = 400;
		var centerY = 225;
		
		var PlayerNear:Boolean = false;
		var health:int = 10;
		var randomMove:int;
		var EnemySpeed:Number = 1.5;
		
		var SpawnPointX;
		var SpawnPointY;

		public function Enemy(X:int, Y:int, mPlayer1, mMap1, mStage, mWallsArray) 
		{
			// constructor code
			this.x = X;
			this.y = Y;
			
			pPlayer1 = mPlayer1;
			pMap1 = mMap1;
			pWallsArray = mWallsArray;	
			
			SpawnPointX = X;
			SpawnPointY = Y;
		}		
		
		public function CheckEnemyHealth()
		{
			if(health == 0)
			{
				stage.removeChild(this);
			}
		}

		public function IsPlayerNear()
		{			
			if(this.x < (pMap1.x - 550) * -1 && this.x > (pMap1.x - 250) * -1)
			{
				if(this.y > (pMap1.y - 75) * -1 && this.y < (pMap1.y - 375) * -1)
				{
					EnemySpeed = 1.5;
					KillPlayer();
				}
			}					
		}
		
		public function KillPlayer()
		{
			if(this.x < (pMap1.x - 400) * -1)
			{
				this.x += EnemySpeed;
			}
			
			if(this.x > (pMap1.x - 400) * -1)
			{
				this.x -= EnemySpeed;
			}
			
			if(this.y < (pMap1.y - 225) * -1)
			{
				
				this.y += EnemySpeed;
			}	
			
			if(this.y > (pMap1.y - 225) * -1)
			{
				this.y -= EnemySpeed;
			}
			
			if(pPlayer1.hitTestObject(this) == true)
			{
				this.pPlayer1.enemyDamage(pPlayer1, this);
				this.pPlayer1.CheckPlayerHealth();
			}	
		}
		
		public function EnemyWallCollision()
		{
			for(var i = 0; i < pWallsArray.length; i++)
			{
				if(this.hitTestObject(pWallsArray[i]) == true)
				{
					this.y = SpawnPointY;
					this.x = SpawnPointX;
				}				
			}
		}
		
		public function Update()
		{	
			EnemyWallCollision();
			IsPlayerNear();			
		}
	}	
}