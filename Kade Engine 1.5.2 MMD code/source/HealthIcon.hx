package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [29, 30], 0, false, isPlayer);
		animation.add('bf-pixel', [16, 17], 0, false, isPlayer);
		animation.add('bf-pixel-thorns', [16, 17], 0, false, isPlayer);
		animation.add('bf-pixel-hollo', [27, 28], 0, false, isPlayer);
		animation.add('spooky', [4, 5], 0, false, isPlayer);
		animation.add('pico', [6, 7], 0, false, isPlayer);
		animation.add('mom', [8, 9], 0, false, isPlayer);
		animation.add('mom-car', [8, 9], 0, false, isPlayer);
		animation.add('caption', [25, 26], 0, false, isPlayer);
		animation.add('dad', [2, 3], 0, false, isPlayer);
		animation.add('senpai', [18, 19], 0, false, isPlayer);
		animation.add('senpai-angry', [20, 21], 0, false, isPlayer);
		animation.add('spirit', [22, 22], 0, false, isPlayer);
		animation.add('bf-old', [23, 24], 0, false, isPlayer);
		animation.add('gf', [14, 15], 0, false, isPlayer);
		animation.add('gf-christmas', [14, 15], 0, false, isPlayer);
		animation.add('gf-pixel', [14, 15], 0, false, isPlayer);
		animation.add('gf-pixel-thorns', [15, 15], 0, false, isPlayer);
		animation.add('gf-stress', [15, 15], 0, false, isPlayer);
		animation.add('parents-christmas', [10, 11], 0, false, isPlayer);
		animation.add('monster', [12, 13], 0, false, isPlayer);
		animation.add('monster-christmas', [12, 13], 0, false, isPlayer);
		animation.add('face', [55, 56], 0, false, isPlayer);
		animation.add('bf-old-old', [57, 58], 0, false, isPlayer);
		animation.add('head', [59, 59], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel' | 'bf-pixel-thorns' | 'gf-pixel-thorns | bf-pixel-hollo':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
