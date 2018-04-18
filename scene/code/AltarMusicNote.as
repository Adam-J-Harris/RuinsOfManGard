package  
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	public class AltarMusicNote extends MovieClip 
	{
		var mdragged;
		
		public function AltarMusicNote(X:int, Y:int, pdragged)//, pMusicNotesArray, pMusicNotes1) 
		{
			// constructor code
			mdragged = pdragged;
			mdragged = false;	
			
			addEventListener(MouseEvent.MOUSE_DOWN, DragEvent);
			addEventListener(MouseEvent.MOUSE_UP, DropEvent);
			
			this.x = X;
			this.y = Y;
		}
		
		public function DragEvent(event:MouseEvent)
		{
				startDrag();
				mdragged = true;
		}
		
		public function DropEvent(event:MouseEvent)
		{
				stopDrag();
				mdragged = false
		}
		
		public function Update()
		{
			
		}
	}
}

