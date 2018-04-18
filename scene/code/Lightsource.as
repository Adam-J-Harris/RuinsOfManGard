package  
{
	import flash.display.MovieClip;	
	import flash.events.KeyboardEvent;
	import flash.geom.Vector3D;
	import flash.events.Event;
	import flash.display.Stage;
	
	public class Lightsource extends MovieClip 
	{
		var mapSpeed = 10;
		var mMap1:Object;
		var mInputComponent;
		var mStage:Stage;
		
		public function Lightsource(X:int, Y:int, pMap1:Object, pStage:Stage) 
		{
			// constructor code
			this.x = X;
			this.y = Y;
			
			mInputComponent = new InputComponent(pStage, mMap1, this);
			
			mMap1 = pMap1;
			mStage = pStage;
		}
		
		public function Update()
		{
			
		}
	}
}
