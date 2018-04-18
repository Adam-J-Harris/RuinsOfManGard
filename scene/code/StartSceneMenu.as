package 
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	public class StartSceneMenu extends MovieClip 
	{
		var EntityRef:Array = new Array();
		var NextScene = null;
		var Unloading:Boolean = false;		
		
		public function StartSceneMenu() 
		{
			// constructor code			
		}
		
		public function LoadContent(pStage) 
		{
			//adds the buttons
			for(var i:int = 0; i < EntityRef.length; i++)
			{
				 pStage.addChild(EntityRef[i]);
			}
		}
		
		public function UnloadContent (Caller:Object) 
		{
			Unloading = true;
			NextScene.EntityRef = EntityRef; 
			
			//Removes the buttons
			for(var i:int = 0; i < EntityRef.length; i++)
			{
				Caller.stage.removeChild(EntityRef[i]);//Kernal is the caller
			}

			EntityRef.length = 0; //length to zero
			
			Caller.CurrentScene = NextScene;
			Caller.NewScene(); //call new scene from caller			
		}
		
		public function Initialize(pStage) 
		{
			var centerX = pStage.stageWidth/2;
			var centerY = pStage.stageHeight/2;
			
			var Background =  new StartBackground(centerX, centerY, 800, 470)
			EntityRef.push(Background);
			
			var GameTitleText = new GameTitle(centerX, 90);
			EntityRef.push(GameTitleText);

			var StartGameButton = new button("Start Game", centerX, 160, this);
			StartGameButton.SceneLink = new GameScene();
			EntityRef.push(StartGameButton);
			
			var Instructions1 = new button ("Instructions", centerX, 260, this);
			Instructions1.SceneLink = new InstructionsScene(); 
			EntityRef.push(Instructions1);	
			
			var EndGameButton = new button ("End Game", centerX, 360, this); // link these to gameScene
			EndGameButton.SceneLink = new StartSceneMenu(); //
			EntityRef.push(EndGameButton);		    
		}
		
		public function Update ()
		{
			
		}		
	}
}
	

