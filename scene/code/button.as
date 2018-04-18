package 
{	
		import flash.display.MovieClip;
		import flash.events.MouseEvent;
	
	public class button extends MovieClip 
	{		
		public var clicked:Boolean;
		public var SceneLink:Object; 
		public var ParentMenu;
		
		public function button (Text:String, X:int, Y:int, pMenu) /*(Text:String, X:int, Y:int, pMenu:Object) */
		{
			addEventListener(MouseEvent.CLICK, ClickEvent);
			this.x = X;
			this.y = Y;
			this.bText.text = Text; //this refers to the button graphic (created in scene) .text is a property for the dynamic textbox
			ParentMenu = pMenu; 
		}
		
		public function ClickEvent(Text) 
		{
			ParentMenu.NextScene = SceneLink;
			trace(SceneLink + "");
			SceneLink.Unloading = true;  
		}
	}	
}



