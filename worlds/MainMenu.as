package worlds // <-- you need this in anything that is stored in a package (ex: package.worlds.menus if this was in a menus folder under worlds)
{
	import mx.core.ButtonAsset;
	import net.flashpunk.World;
	import punk.ui.PunkButton;
	import net.flashpunk.FP;
	import worlds.*;
	
	
	/*****************
	 * @author Tommy *
	 *****************/
	public class MainMenu extends World 
	{
		
		public function MainMenu():void
		{
			// You were adding a MainMenu to a MainMenu...which kinda troughs errors.
			// 		add(new MainMenu);
			
			
			var button:PunkButton = new PunkButton(FP.halfWidth - 75, 375, 150, 50, "Start Game!", function():void { FP.world = new Game } );
			
			add(button);
		}
		
	}

}