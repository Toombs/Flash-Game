package 
{
import net.flashpunk.Engine;
import net.flashpunk.FP;
import worlds.*;
import splash.Splash;

	/****************
	 * @author Tommy
	 ****************/
	public class Main extends Engine
	{
		
		public function Main()
		{
			
			super(800, 600, 60);
			
			FP.console.enable();
			
		}

		override public function init():void
		{
			
			trace("FlashPunk has started successfully!")
			
			var s:Splash = new Splash;
			FP.world.add(s);
			s.start(splashComplete);
			
		}
		
		public function splashComplete():void
		{
			FP.world = new MainMenu();
		}
	}
	
}