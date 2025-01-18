package states;

import flixel.FlxSubState;

import flixel.effects.FlxFlicker;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import lime.app.Application;

class FlashingState extends MusicBeatState
{
	public static var leftState:Bool = false;
	var warnSprite:FlxSprite;


	override function create()
	{
		super.create();

		warnSprite = new FlxSprite();
        warnSprite.loadGraphic(Paths.image('warn'));
		warnSprite.scale.set(0.666666, 0.666666);
		warnSprite.updateHitbox();
		warnSprite.antialiasing = true;
        warnSprite.alpha = 0;
        add(warnSprite);

		FlxTween.tween(warnSprite, { alpha: 1 }, 1, {
            onComplete: function(twn: FlxTween) {
                warnSprite.alpha = 1;
            }
        });
	}

	override function update(elapsed:Float)
	{
		if(!leftState) {
			if (controls.ACCEPT || controls.BACK) {
				leftState = true;
				FlxTransitionableState.skipNextTransIn = true;
				FlxTransitionableState.skipNextTransOut = true;
				FlxTween.tween(warnSprite, { alpha: 0 }, 1, {
					onComplete: function(twn: FlxTween) {
						MusicBeatState.switchState(new TitleState());
					}
				});
			}
		}
		super.update(elapsed);
	}
}
