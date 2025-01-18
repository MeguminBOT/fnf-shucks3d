package states;

import objects.AttachedSprite;

class CreditsState extends MusicBeatState
{
	var bg:FlxSprite;
	var creditsImage:FlxSprite;

	override function create()
	{
		#if DISCORD_ALLOWED
		// Updating Discord Rich Presence
		DiscordClient.changePresence("In the Menus", null);
		#end

		persistentUpdate = true;

		bg = new FlxSprite(0, 0).loadGraphic(Paths.image('breakdown'));
		bg.frames = Paths.getSparrowAtlas('breakdown');
		bg.animation.addByPrefix('play', 'idle', 24, true);
		bg.antialiasing = ClientPrefs.data.antialiasing;
		bg.animation.play('play');
		add(bg);

		creditsImage = new FlxSprite().loadGraphic(Paths.image('credits'));
		creditsImage.scale.set(0.666667, 0.666667);
		creditsImage.updateHitbox();
		creditsImage.screenCenter();
		creditsImage.antialiasing = ClientPrefs.data.antialiasing;
		add(creditsImage);
	}

	override function update(elapsed:Float)
	{
		if (FlxG.sound.music.volume < 0.7) {
			FlxG.sound.music.volume += 0.5 * FlxG.elapsed;
		}

		if (controls.BACK)
		{
			FlxG.sound.play(Paths.sound('cancelMenu'));
			MusicBeatState.switchState(new MainMenuState());
		}
		
		super.update(elapsed);
	}
}