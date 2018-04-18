package 
{	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.Timer;
	import flash.events.TimerEvent;	
	import flash.events.KeyboardEvent;
	
	public class Kernal extends MovieClip
	{
		//data members		
		var period = 1000/40;
		var gameTimer:Timer = new Timer(period);
		var CurrentScene = null;
		var Instructions:MovieClip;
		var endGame:MovieClip;
		var EntityList:Array = new Array(); //created array data member
		
		public function Kernal()
		{
			// constructor code
			addEventListener(Event.ADDED_TO_STAGE, startGame); //event listener for start game	
		}
		
		public function startGame(e:Event)
		{
			removeEventListener(Event.ADDED_TO_STAGE, startGame);			
			CurrentScene = new StartSceneMenu(); // kernal linking the first scene to everything->called new method from Kernal
			
			NewScene();	
			gameTimer.addEventListener(TimerEvent.TIMER, Update); //event listener for game timer
			gameTimer.start(); //start game loop
			
			//stage.addEventListener(KeyboardEvent.KEY_DOWN, Map.KeyDown);
			//stage.addEventListener(KeyboardEvent.KEY_UP, Map.KeyUp);
		}
		
		public function NewScene() 
		{
			Initialize ();
			LoadContent();			
		}
	
		public function Initialize() 
		{	
			CurrentScene.EntityRef = EntityList; // link the current scene to the main entityList->now technically have one list
			CurrentScene.Initialize(stage);
		}
		
		public function LoadContent() 
		{
			CurrentScene.LoadContent(stage)
		}
		
		public function UnloadContent () 
		{
			CurrentScene.UnloadContent(this);
		}
		
		public function Update (e:Event)
		{
			CurrentScene.Update();
			
			if (CurrentScene.NextScene != null && CurrentScene.Unloading != null)
			{
				UnloadContent();
			}			
		}
	}
}