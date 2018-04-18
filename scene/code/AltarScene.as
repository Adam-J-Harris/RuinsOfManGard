package 
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	public class AltarScene extends MovieClip
	{
		var EntityRef:Array = new Array();
		var MusicNotesArray:Array = new Array();
		var AltarNoteHolderArray:Array = new Array();
		
		var NextScene = null;
		var Unloading:Boolean = false;
		
		var AltarFloor1;
		var AltarNoteHolder1;
		var AltarNoteHolder2;
		var AltarNoteHolder3;
		var AltarNoteHolder4;
		var MusicNotes1;
		var MusicNotes2;
		var MusicNotes3;
		var MusicNotes4;
		var Player1;
		var Map1;
		var Altar1;
		var dragged:Boolean;
		
		public function AltarScene() 
		{
			// constructor code
		}
		public function Initialize(pStage) 
		{
			var centerX = pStage.stageWidth/2;	
			var centerY = pStage.stageHeight/2;
				
			AltarFloor1 = new AltarFloor(centerX + 120, centerY +100);
			EntityRef.push(AltarFloor1);
			
			Altar1 = new AltarAltarScene(centerX - 10, centerY - 7, MusicNotesArray, AltarNoteHolderArray);
			EntityRef.push(Altar1);
			
			MusicNotes1 = new AltarMusicNote(200,centerY + 100, dragged)
			MusicNotesArray.push(MusicNotes1)
			
			MusicNotes2 = new AltarMusicNote(325,centerY + 100, dragged)
			MusicNotesArray.push(MusicNotes2);
			
			MusicNotes3 = new AltarMusicNote(450,centerY + 100, dragged)
			MusicNotesArray.push(MusicNotes3);
			
			MusicNotes4 = new AltarMusicNote(575,centerY + 100, dragged)
			MusicNotesArray.push(MusicNotes4);
			
			AltarNoteHolder1 = new AltarNoteHolder(200, centerY, MusicNotesArray, dragged, this);
			AltarNoteHolder1.SceneLink = new GameOverWinScene();
			AltarNoteHolderArray.push(AltarNoteHolder1);
			
			AltarNoteHolder2 = new AltarNoteHolder(325, centerY, MusicNotesArray, dragged, this);
			AltarNoteHolder2.SceneLink = new GameOverWinScene();
			AltarNoteHolderArray.push(AltarNoteHolder2);
			
			AltarNoteHolder3 = new AltarNoteHolder(450, centerY, MusicNotesArray, dragged, this);
			AltarNoteHolder3.SceneLink = new GameOverWinScene();
			AltarNoteHolderArray.push(AltarNoteHolder3);
			
			AltarNoteHolder4 = new AltarNoteHolder(575, centerY, MusicNotesArray, dragged, this);
			AltarNoteHolder4.SceneLink = new GameOverWinScene();
			AltarNoteHolderArray.push(AltarNoteHolder4);
			
			var PlaySound = new buttonSound ("Play Sound", centerX,  390, this);
			EntityRef.push(PlaySound);
			
		}
		public function LoadContent(pStage) 
		{
			for( var i = 0; i < EntityRef.length; i++)
			{
				pStage.addChild(EntityRef[i]);
			}
			
			for(var m:int = 0; m < MusicNotesArray.length; m++)
			{
				pStage.addChild(MusicNotesArray[m]);				
			}
			
			for(var h:int = 0; h < AltarNoteHolderArray.length; h++)
			{
				pStage.addChild(AltarNoteHolderArray[h]);				
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
			
			for(var m:int = 0; m < MusicNotesArray.length; m++)
			{
				Caller.stage.removeChild(MusicNotesArray[m]);				
			}
			
			for(var h:int = 0; h < AltarNoteHolderArray.length; h++)
			{
				Caller.stage.removeChild(AltarNoteHolderArray[h]);				
			}
			
			Caller.CurrentScene = NextScene;
			Caller.NewScene();	
		}

		public function Update ()
		{
			for(var m:int = 0; m < MusicNotesArray.length; m++)
			{
				this.MusicNotesArray[m].Update();
			}
			
			for(var h:int = 0; h < AltarNoteHolderArray.length; h++)
			{
				this.AltarNoteHolderArray[h].Update();				
			}
			
			this.Altar1.Update()
			
		}
	}
}
