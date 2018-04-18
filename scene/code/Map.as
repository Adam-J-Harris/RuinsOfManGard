package 
{	
	import flash.display.MovieClip;	
	import flash.events.KeyboardEvent;
	import flash.geom.Vector3D;
	import flash.events.Event;
	import flash.display.Stage;
	
	public class Map extends MovieClip
	{		
		var mInputComponent;
		var mapSpeed;
		var mPlayer1:Object;
		var mLightsource1:Object;
		var mStage:Stage;
		
		public function Map(X:int, Y:int, pStage:Stage, pPlayer1:Object, pLightsource1:Object) 
		{
			// constructor code
			this.x = X;
			this.y = Y;
			
			mPlayer1 = pPlayer1;
			mLightsource1 = pLightsource1;
			mStage = pStage;
			
			mInputComponent = new InputComponent(pStage, this, mLightsource1);
		}
		
		public function Update()
		{

		}
	}
}
