package
{
	import flash.display.MovieClip;	
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.geom.Vector3D;
	import flash.events.Event;
	import flash.display.Stage;
	
	public class GameScene extends MovieClip 
	{		
		var EntityRef:Array = new Array();
		var EnemyArray:Array = new Array();
		var WallsArray:Array = new Array();
		var MusicNotesArray:Array = new Array();
		var AltarArray:Array = new Array();
		
		var NextScene = null;
		var Unloading:Boolean = false;
		
		var Map1;				
		var Player1;
		var MusicNotes1;
		var MusicNotes2;
		var MusicNotes3;
		var MusicNotes4;
		var Lightsource1;
		var Altar1;
		var Door1;
		
		var Enemy1;
		var Enemy2;
		var Enemy3;
		var Enemy4;
		var Enemy5;
		var Enemy6;
		var Enemy7;
		var Enemy8;
		var Enemy9;
		var Enemy10;
		var Enemy11;
		var Enemy12;
		var Enemy13;
		var Enemy14;
		
		var WallsHorizontal1;
		var WallsHorizontal2;
		var WallsHorizontal3;
		var WallsHorizontal4;
		var WallsHorizontal5;
		var WallsHorizontal6;
		var WallsHorizontal7;
		var WallsHorizontal8;
		var WallsHorizontal9;
		var WallsHorizontal10;
		var WallsHorizontal11;
		var WallsHorizontal12;
		var WallsHorizontal13;
		var WallsHorizontal14;
		var WallsHorizontal15;
		var WallsHorizontal16;
		var WallsHorizontal17;
		var WallsHorizontal18;
		var WallsHorizontal19;
		var WallsHorizontal20;
		var WallsHorizontal21;
		var WallsHorizontal22;
		var WallsHorizontal23;
		var WallsHorizontal24;
		var WallsHorizontal25;
		var WallsHorizontal26;
		var WallsHorizontal27;
		var WallsHorizontal28;
		var WallsHorizontal29;
		var WallsHorizontal30;
		var WallsHorizontal31;
		var WallsHorizontal32;
		
		var WallsVertical1;
		var WallsVertical2;
		var WallsVertical3;
		var WallsVertical4;
		var WallsVertical5;
		var WallsVertical6;
		var WallsVertical7;
		var WallsVertical8;
		var WallsVertical9;
		var WallsVertical10;
		var WallsVertical11;
		var WallsVertical12;
		var WallsVertical13;
		var WallsVertical14;
		var WallsVertical15;
		var WallsVertical16;
		var WallsVertical17;
		var WallsVertical18;
		var WallsVertical19;
		var WallsVertical20;
		var WallsVertical21;
		var WallsVertical22;
		var WallsVertical23;
		var WallsVertical24;
		var WallsVertical25;
		var WallsVertical26;
		var WallsVertical27;
		var WallsVertical28;
		
		public function GameScene() 
		{
			// constructor code
		}
		
		
		
		public function Initialize(pStage)
		{			
			var centerX = pStage.stageWidth/2;	
			var centerY = pStage.stageHeight/2;
			var MapCenterX = 0;
			var MapCenterY = 0;
			
			Map1 = new Map(centerX, centerY, pStage, Player1, Lightsource1);//, EntityRef);
			EntityRef.push(Map1);
			
			Player1 = new Player(centerX, centerY, this);
			Player1.SceneLink = new GameOverScene();
			EntityRef.push(Player1);
			
			Altar1 = new Altar(centerX - 235, centerY + 100, this, Player1);
			Altar1.SceneLink = new AltarScene();
			AltarArray.push(Altar1);
			
			Lightsource1 = new Lightsource(centerX - 345, centerY + 20,Map1, pStage); 
			EntityRef.push(Lightsource1);
			
		    WallsHorizontal1 = new CollidingWallProto(MapCenterX - 245, MapCenterY - 110, 400, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal1);
			
			WallsHorizontal2 = new CollidingWallProto(MapCenterX - 245, MapCenterY - 210, 400, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal2);
			
			WallsHorizontal3 = new CollidingWallProto(MapCenterX - 190, MapCenterY - 350, 310, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal3);
			
			WallsHorizontal4 = new CollidingWallProto(MapCenterX - 170, MapCenterY - 670, 270, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal4);
			
			WallsHorizontal5 = new CollidingWallProto(MapCenterX - 170, MapCenterY - 760, 270, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal5);
			
			WallsHorizontal6 = new CollidingWallProto(MapCenterX - 450, MapCenterY - 930, 340, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal6);
			
			WallsHorizontal7 = new CollidingWallProto(MapCenterX - 450, MapCenterY - 610, 340, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal7);
			
			WallsHorizontal8 = new CollidingWallProto(MapCenterX + 5, MapCenterY - 930, 110, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal8);
			
			WallsHorizontal9 = new CollidingWallProto(MapCenterX + 210, MapCenterY - 760, 330, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal9);
			
			WallsHorizontal10 = new CollidingWallProto(MapCenterX + 210, MapCenterY - 445, 330, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal10);
			
			WallsHorizontal11 = new CollidingWallProto(MapCenterX + 165, MapCenterY - 350, 250, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal11);
			
			WallsHorizontal12 = new CollidingWallProto(MapCenterX + 210, MapCenterY - 760, 330, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal12);
			
			WallsHorizontal13 = new CollidingWallProto(MapCenterX + 440, MapCenterY - 650, 170, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal13);
			
			WallsHorizontal14 = new CollidingWallProto(MapCenterX + 395, MapCenterY - 560, 75, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal14);
			
			WallsHorizontal15 = new CollidingWallProto(MapCenterX - 375, MapCenterY - 390, 130, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal15);
			
			WallsHorizontal16 = new CollidingWallProto(MapCenterX - 420, MapCenterY - 480, 215, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal16);
			
			WallsHorizontal17 = new CollidingWallProto(MapCenterX - 200, MapCenterY + 255, 320, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal17);
			
			WallsHorizontal18 = new CollidingWallProto(MapCenterX + 90, MapCenterY + 255, 80, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal18);
			
			WallsHorizontal19 = new CollidingWallProto(MapCenterX + 255, MapCenterY + 255, 135, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal19);
			
			WallsHorizontal20 = new CollidingWallProto(MapCenterX + 405, MapCenterY + 255, 50, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal20);
			
			WallsHorizontal21 = new CollidingWallProto(MapCenterX + 350, MapCenterY, 160, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal21);
			
			WallsHorizontal22 = new CollidingWallProto(MapCenterX + 350, MapCenterY - 90, 160, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal22);
			
			WallsHorizontal23 = new CollidingWallProto(MapCenterX + 165, MapCenterY + 400, 245, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal23);
			
			WallsHorizontal24 = new CollidingWallProto(MapCenterX + 120, MapCenterY + 490, 340, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal24);
			
			WallsHorizontal25 = new CollidingWallProto(MapCenterX + 345, MapCenterY + 560, 150, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal25);
			
			WallsHorizontal26 = new CollidingWallProto(MapCenterX + 550, MapCenterY + 560, 90, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal26);
			
			WallsHorizontal27 = new CollidingWallProto(MapCenterX + 550, MapCenterY + 250, 90, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal27);
			
			WallsHorizontal28 = new CollidingWallProto(MapCenterX + 60, MapCenterY + 650, 730, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal28);
			
			WallsHorizontal29 = new CollidingWallProto(MapCenterX + 120, MapCenterY + 750, 830, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal29);
			
			WallsHorizontal30 = new CollidingWallProto(MapCenterX - 450, MapCenterY + 845, 320, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal30);
			
			WallsHorizontal31 = new CollidingWallProto(MapCenterX - 370, MapCenterY + 530, 160, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal31);
			
			WallsHorizontal32 = new CollidingWallProto(MapCenterX - 570, MapCenterY + 530, 100, 20, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsHorizontal32);
			
			WallsVertical1 = new CollidingWallProto(MapCenterX - 345, MapCenterY + 80, 20, 370, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical1);
			
			WallsVertical2 = new CollidingWallProto(MapCenterX - 345, MapCenterY - 280, 20, 160, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical2);
			
			WallsVertical3 = new CollidingWallProto(MapCenterX + 280, MapCenterY - 220, 20, 250, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical3);
			
			WallsVertical4 = new CollidingWallProto(MapCenterX + 280, MapCenterY + 210, 20, 400, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical4);
			
			WallsVertical5 = new CollidingWallProto(MapCenterX + 50, MapCenterY + 327, 20, 165, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical5);
			
			WallsVertical6 = new CollidingWallProto(MapCenterX - 40, MapCenterY + 365, 20, 240, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical6);
			
			WallsVertical7 = new CollidingWallProto(MapCenterX + 420, MapCenterY + 120, 20, 250, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical7);
			
			WallsVertical8 = new CollidingWallProto(MapCenterX + 423, MapCenterY - 320, 20, 478, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical8);
			
			WallsVertical9 = new CollidingWallProto(MapCenterX + 365, MapCenterY - 502, 20, 135, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical9);
			
			WallsVertical10 = new CollidingWallProto(MapCenterX + 50, MapCenterY - 640, 20, 601, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical10);
			
			WallsVertical11 = new CollidingWallProto(MapCenterX - 45, MapCenterY - 850, 20, 180, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical11);
			
			WallsVertical12 = new CollidingWallProto(MapCenterX - 45, MapCenterY - 500, 20, 320, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical12);
			
			WallsVertical13 = new CollidingWallProto(MapCenterX + 365, MapCenterY - 700, 20, 110, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical13);
			
			WallsVertical14 = new CollidingWallProto(MapCenterX - 295, MapCenterY - 640, 20, 70, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical14);
			
			WallsVertical15 = new CollidingWallProto(MapCenterX - 295, MapCenterY - 850, 20, 170, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical15);
			
			WallsVertical16 = new CollidingWallProto(MapCenterX - 610, MapCenterY - 770, 20, 330, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical16);
			
			WallsVertical17 = new CollidingWallProto(MapCenterX - 435, MapCenterY - 300, 20, 200, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical17);
			
			WallsVertical18 = new CollidingWallProto(MapCenterX - 320, MapCenterY - 435, 20, 105, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical18);
			
			WallsVertical19 = new CollidingWallProto(MapCenterX - 516, MapCenterY + 30, 20, 1020, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical19);
			
			WallsVertical20 = new CollidingWallProto(MapCenterX - 435, MapCenterY + 210, 20, 650, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical20);
			
			WallsVertical21 = new CollidingWallProto(MapCenterX - 295, MapCenterY + 590, 20, 140, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical21);
			
			WallsVertical22 = new CollidingWallProto(MapCenterX - 610, MapCenterY + 690, 20, 330, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical22);
			
			WallsVertical23 = new CollidingWallProto(MapCenterX - 295, MapCenterY + 797, 20, 115, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical23);
			
			WallsVertical24 = new CollidingWallProto(MapCenterX + 517, MapCenterY + 650, 23, 180, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical24);
			
			WallsVertical25 = new CollidingWallProto(MapCenterX + 415, MapCenterY + 600, 20, 100, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical25);
			
			WallsVertical26 = new CollidingWallProto(MapCenterX + 280, MapCenterY + 520, 20, 80, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical26);
			
			WallsVertical27 = new CollidingWallProto(MapCenterX + 590, MapCenterY + 405, 20, 330, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical27);
			
			WallsVertical28 = new CollidingWallProto(MapCenterX + 515, MapCenterY - 205 , 20, 895, Map1, Player1, pStage, EnemyArray);
			WallsArray.push(WallsVertical28);
			
			Door1 = new Door(MapCenterX + 160, MapCenterY + 255, 60, 20, Map1, Player1, pStage, MusicNotesArray);
			WallsArray.push(Door1);
			
			MusicNotes1 = new MusicNote(-400, - 750, Player1, Map1, MusicNotesArray);
			MusicNotesArray.push(MusicNotes1)
			
			MusicNotes2 = new MusicNote(160, - 500, Player1,Map1, MusicNotesArray);
			MusicNotesArray.push(MusicNotes2);
			
			MusicNotes3 = new MusicNote(350,100, Player1,Map1, MusicNotesArray);
			MusicNotesArray.push(MusicNotes3);
			
			MusicNotes4 = new MusicNote(-400,700, Player1,Map1, MusicNotesArray);
			MusicNotesArray.push(MusicNotes4);
			
			Enemy1 = new Enemy(MapCenterX, - 870, Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy1);

			Enemy2 = new Enemy(MapCenterX - 450, - 850, Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy2);
			
			Enemy3 = new Enemy(MapCenterX - 250, MapCenterY - 250, Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy3);
			
			Enemy4 = new Enemy( 150 , MapCenterY - 250, Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy4);
			
			Enemy5 = new Enemy( - 150,  MapCenterY + 200, Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy5);
			
			Enemy6 = new Enemy( 100, MapCenterY  - 650 , Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy6);
			
			Enemy7 = new Enemy(230, - 700, Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy7);
			
			Enemy8 = new Enemy(350, MapCenterY + 40, Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy8);
			
			Enemy9 = new Enemy(MapCenterX + 530, MapCenterY + 300, Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy9);
			
			Enemy10 = new Enemy(MapCenterX + 400, MapCenterY + 400, Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy10);
			
			Enemy11 = new Enemy(MapCenterX - 470, MapCenterY - 445, Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy11);
			
			Enemy12 = new Enemy(MapCenterX - 470, MapCenterY + 800, Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy12);
			
			Enemy13 = new Enemy(MapCenterX - 520, MapCenterY + 600, Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy13);
			
			Enemy14 = new Enemy(MapCenterX + 130, MapCenterY + 200, Player1, Map1, pStage, WallsArray);
			EnemyArray.push(Enemy14);
		}
		
		public function LoadContent(pStage)
		{
			for(var i:int = 0; i < EntityRef.length; i++)
			{
				pStage.addChild(EntityRef[i]);				
			}
			
			for(var p:int = 0; p < AltarArray.length; p++)
			{
				this.Map1.addChild(AltarArray[p]);				
			}	
			
			for(var e:int = 0; e < EnemyArray.length; e++)
			{
				this.Map1.addChild(EnemyArray[e]);	
			}
			
			for(var k:int = 0; k < WallsArray.length; k++)
			{
				this.Map1.addChild(WallsArray[k]);
			}
			
			for(var m:int = 0; m < MusicNotesArray.length; m++)
			{
				this.Map1.addChild(MusicNotesArray[m]);				
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
			this.Map1.Update();
	
			for(var i:int = 0; i < WallsArray.length; i++)
			{
				this.WallsArray[i].Update();
			}
			
			for(var p:int = 0; p < AltarArray.length; p++)
			{
				this.AltarArray[p].Update();				
			}
			
			for(var k:int = 0; k < EnemyArray.length; k++)
			{
				this.EnemyArray[k].Update();
			}
			
			for(var m:int = 0; m < MusicNotesArray.length; m++)
			{
				this.MusicNotesArray[m].Update();
			}
		}
	}	
}
