package 
{
	import flash.events.Event;
	//import flash.display.Keyboard;
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	
	public class InputComponent extends MovieClip
	{
		var mUp = false;
		var mDown = false;
		var mLeft = false;
		var mRight = false;
		var mStage;
		var mMap:Object;
		var mLightsource:Object;
		
		var lightBool:Boolean;
		var playerBool:Boolean = true;
		
		var mInputComponent;
		
		var mSpeed:Number = 7;
		var NoSpeed:Number = 0;
		
		public function InputComponent(pStage, pMap:Object, pLightsource:Object) 
		{
			// constructor code
			mStage = pStage;
			mMap = pMap;
			mLightsource = pLightsource;
			
			mStage.addEventListener(KeyboardEvent.KEY_DOWN, SwitchToLight);
			mStage.addEventListener(KeyboardEvent.KEY_DOWN, SwitchToPlayer);
			mStage.addEventListener(KeyboardEvent.KEY_DOWN, MapControl);
			mStage.addEventListener(KeyboardEvent.KEY_DOWN, LightControl);
		}
		
		public function MapControl(e:KeyboardEvent)
		{			
			if(playerBool == true)
			{
				if(e.keyCode == 87)
				{
					// Player "moves" upwards (w)
					mMap.y += mSpeed;
					//mLightsource.y -= NoSpeed;
				}
				
				if(e.keyCode == 83)
				{
					// player moves down (s)
					mMap.y -= mSpeed;
					//mLightsource.y -= NoSpeed;
				}
				
				if(e.keyCode == 65)
				{
					// player moves left (d)
					mMap.x += mSpeed;
					//mLightsource.x -= NoSpeed;
				}			
				
				if(e.keyCode == 68)
				{
					// player moves right (a)
					mMap.x -= mSpeed;
					//mLightsource.x -= NoSpeed;
				}
			}
			//trace(mMap.x, mMap.y);
			//trace("MapControl: " + playerBool, e.keyCode, mMap, mSpeed, mLightsource);
		}
		
		public function LightControl(e:KeyboardEvent) // use arrow keys instead WASD
		{
			if(lightBool == true)
			{
				if(e.keyCode == 38)
				{
					// light "moves" upwards (w)
					mLightsource.y -= mSpeed;
					//mMap.y -= NoSpeed;
				}
				
				if(e.keyCode == 40)
				{
					// light moves down (s)
					mLightsource.y += mSpeed;
					//mMap.y += NoSpeed;
				}
				
				if(e.keyCode == 37)
				{
					// light moves left (d)
					mLightsource.x -= mSpeed;
					//mMap.x += NoSpeed;
				}			
				
				if(e.keyCode == 39)
				{
					// light moves right (a)
					mLightsource.x += mSpeed;
					//mMap.x -= NoSpeed;
				}
			}
			
			//trace("LightControl: " + lightBool, e.keyCode, mLightsource, mSpeed);
		}
		
		public function SwitchToLight(e:KeyboardEvent)
		{
			if(e.keyCode == 69) // E
			{
				lightBool = true;
				playerBool = false;
			}
		}
		
		public function SwitchToPlayer(e:KeyboardEvent)
		{
			if(e.keyCode == 81) // Q
			{
				//mLightsource.x = (mMap.y - 400) * -1
				//mLightsource.y = (mMap.y - 225) * -1;
			
				lightBool = false;
				playerBool = true;
			}
		}
		
		public function Update()
		{
			
		}
	}
}
