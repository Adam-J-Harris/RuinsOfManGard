package  
{
	import flash.display.MovieClip;
	
	public class Altar extends MovieClip 
	{
		var SceneLink:Object; 
		var ParentMenu;
		var mPlayer1;
		
		public function Altar(X:int, Y:int, pMenu, pPlayer1) 
		{
			// constructor code
			this.x = X;
			this.y = Y;
			ParentMenu = pMenu;
			mPlayer1 = pPlayer1;
		}
		
		public function SwitchToAltar()
		{
			if(mPlayer1.hitTestObject(this) == true)
			{
				ParentMenu.NextScene = SceneLink;
				trace(SceneLink + "");
				SceneLink.Unloading = true;
			}
		}
		
		public function Update()
		{
			SwitchToAltar();
		}
	}
}
