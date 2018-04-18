package  {
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	public class GameOverScene extends MovieClip 
	{
		var EntityRef:Array = new Array();
		
		var NextScene = null;
		var Unloading:Boolean = false;
		
		var backToMenuButton;
		var restartButton;
		var GameOverImage;
		
		public function GameOverScene() 		
		{
			// constructor code
			
		}
		
		public function Initialize(pStage) 
		{
			var centerX = pStage.stageWidth/2;	
			var centerY = pStage.stageHeight/2;
			
			GameOverImage = new GameOverBackground(centerX, centerY, 800, 450);
			EntityRef.push(GameOverImage);
			
			backToMenuButton = new button("Menu", centerX, 250, this);			
			backToMenuButton.SceneLink = new StartSceneMenu();
			EntityRef.push(backToMenuButton);
			
			restartButton = new button("Retry", centerX, 350, this);			
			restartButton.SceneLink = new GameScene();
			EntityRef.push(restartButton);
		}
		
		public function LoadContent(pStage)
		{
			for( var i = 0; i < EntityRef.length; i++)
			{
				pStage.addChild(EntityRef[i]);
			}			
		}
		
		public function UnloadContent (Caller:Object)
		{
			Unloading = true;
			NextScene.EntityRef = EntityRef; 
				
			for(var i = 0; i < EntityRef.length; i++)
			{
				Caller.stage.removeChild(EntityRef[i]);
			}			
			
			EntityRef.length = 0; //length to zero
			
			Caller.CurrentScene = NextScene;
			Caller.NewScene(); //call new scene from caller	
		}
		
		public function Update ()
		{		
			
		}
	}
	
}
