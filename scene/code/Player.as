package 
{	
    import flash.display.MovieClip;	
	import flash.events.KeyboardEvent;
	import flash.geom.Vector3D;
	import flash.events.Event;
	import flash.display.Stage;
		
	public class Player extends MovieClip
	{	
		var health:int = 1300;
		var ParentMenu;
		var SceneLink:Object; 
		
		public function Player(X:int, Y:int, pMenu) 
		{
			// constructor code
			this.x = X;
			this.y = Y;
			
			ParentMenu = pMenu;
		}
		
		public function enemyDamage(pPlayer1, pEnemy1)
		{
			health -= 10;			
		}
		
		public function CheckPlayerHealth()
		{
			if(health <= 0)
			{
				//stage.removeChild(this);
				health = 0;
				
				ParentMenu.NextScene = SceneLink;
				SceneLink.Unloading = true;
			}
		}
		
		public function Update()
		{
			
		}
	}	
}
