package
{
	import flash.display.MovieClip;
	
	public class InstructionsScene extends MovieClip 
	{		
		var EntityRef:Array = new Array();
		var NextScene = null;
		var Unloading:Boolean = false;		
		
		public function InstructionsScene() 
		{
			// constructor code
		}
		
		public function Initialize(pStage)
		{
			var centerX = pStage.stageWidth/2;
			var centerY = pStage.stageHeight/2;
			
			var HowToPlay:Object = new GameInstructions(centerX, centerY, 800, 470)
			EntityRef.push(HowToPlay);
			
			var CloseInstructions = new button ("Start Game", 580, 70, this); // link these to gameScene
			CloseInstructions.SceneLink = new GameScene(); //
			EntityRef.push(CloseInstructions);	
			
			var BackToMenu = new button ("Menu", 705, 70, this); // link these to gameScene
			BackToMenu.SceneLink = new StartSceneMenu(); //
			EntityRef.push(BackToMenu);
			
			
		}
		
		public function LoadContent(pStage)
		{
			for(var i:int = 0; i < EntityRef.length; i++)
			{
				 pStage.addChild(EntityRef[i]);
			} 
		}

		public function UnloadContent(Caller:Object) //may need Caller:Object
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

		public function Update()
		{
			
		}
	}	
}
