package
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	
	/*****************
	 * @author Tommy *
	 *****************/
	public class MyEntity extends Entity 
	{
		[Embed(source="../assets/sprite-reaper-large-log.png")] private const PLAYER:Class;
		
		public function MyEntity() 
		{
			
			graphic = new Image(PLAYER);
			
			Input.define("Shoot", Key.SPACE, Key.X, Key.C);
			
		}
		
		override public function update():void 
		{
			setHitbox(163, 163);

			this.clampHorizontal(0, FP.width);
			this.clampVertical(0, FP.height);
			
			//Movement of PLAYER
			if (Input.check(Key.LEFT)) { x -= 5; }
			if (Input.check(Key.RIGHT)) { x += 5; }
			if (Input.check(Key.UP)) { y -= 5; }
			if (Input.check(Key.DOWN)) { y += 5; }
			
			//Action of PLAYER
			if (Input.check("Shoot"))
			{
				
			}
			
			super.update();
			
		}
		
	}

}