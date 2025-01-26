package substates;

import backend.WeekData;

import objects.Character;
import flixel.FlxObject;
import flixel.FlxSubState;
import flixel.math.FlxPoint;

import states.MainMenuState;

class GameOverSubstate extends MusicBeatSubstate
{
    public var boyfriend:Character;
    var camFollow:FlxObject;

    var stagePostfix:String = "";

    public static var characterName:String = 'bf-dead';
    public static var deathSoundName:String = 'fnf_loss_sfx';
    public static var loopSoundName:String = 'gameOver';
    public static var endSoundName:String = 'gameOverEnd';
    public static var deathDelay:Float = 0;

    public static var instance:GameOverSubstate;

    public function new(?playStateBoyfriend:Character = null)
    {
        if(playStateBoyfriend != null && playStateBoyfriend.curCharacter == characterName) //Avoids spawning a second boyfriend cuz animate atlas is laggy
        {
            this.boyfriend = playStateBoyfriend;
        }
        super();
    }

    public static function resetVariables() {
        loopSoundName = 'gameOver';
        endSoundName = 'gameOverEnd';
        deathDelay = 0;

        var _song = PlayState.SONG;
        if(_song != null)
        {
            if(_song.gameOverLoop != null && _song.gameOverLoop.trim().length > 0) loopSoundName = _song.gameOverLoop;
            if(_song.gameOverEnd != null && _song.gameOverEnd.trim().length > 0) endSoundName = _song.gameOverEnd;
        }
    }

    override function create()
    {
        instance = this;

        Conductor.songPosition = 0;

        FlxG.sound.play(Paths.sound(deathSoundName));
        FlxG.camera.scroll.set();
        FlxG.camera.target = null;

        camFollow = new FlxObject(0, 0, 1, 1);
        camFollow.setPosition(FlxG.camera.scroll.x + (FlxG.camera.width / 2), FlxG.camera.scroll.y + (FlxG.camera.height / 2));
        FlxG.camera.focusOn(new FlxPoint(FlxG.camera.scroll.x + (FlxG.camera.width / 2), FlxG.camera.scroll.y + (FlxG.camera.height / 2)));
        FlxG.camera.follow(camFollow, LOCKON, 0.01);
        add(camFollow);
        
        PlayState.instance.setOnScripts('inGameOver', true);
        PlayState.instance.callOnScripts('onGameOverStart', []);

        super.create();
    }

    override function update(elapsed:Float)
    {
        super.update(elapsed);

        PlayState.instance.callOnScripts('onUpdate', [elapsed]);

        var justPlayedLoop:Bool = false;

        if(!isEnding)
        {
            if (controls.ACCEPT)
            {
                endBullshit();
            }
            else if (controls.BACK)
            {
                #if DISCORD_ALLOWED DiscordClient.resetClientID(); #end
                FlxG.camera.visible = false;
                FlxG.sound.music.stop();
                PlayState.deathCounter = 0;
                PlayState.seenCutscene = false;
                PlayState.chartingMode = false;
    
                Mods.loadTopMod();
                if (PlayState.isStoryMode)
                    MusicBeatState.switchState(new MainMenuState());
                else
                    MusicBeatState.switchState(new MainMenuState());
    
                FlxG.sound.playMusic(Paths.music('freakyMenu'));
                PlayState.instance.callOnScripts('onGameOverConfirm', [false]);
            }
            else if (justPlayedLoop)
            {
                switch(PlayState.SONG.stage)
                {
                    default:
                        //coolStartDeath();
                }
            }
            
            if (FlxG.sound.music.playing)
            {
                Conductor.songPosition = FlxG.sound.music.time;
            }
        }
        PlayState.instance.callOnScripts('onUpdatePost', [elapsed]);
    }

    var isEnding:Bool = false;
    function coolStartDeath(?volume:Float = 1):Void
    {
        FlxG.sound.music.play(true);
        FlxG.sound.music.volume = volume;
    }

    function endBullshit():Void
    {
        if (!isEnding)
        {
            isEnding = true;
            FlxG.sound.music.stop();
            FlxG.sound.play(Paths.music(endSoundName));
            new FlxTimer().start(0.7, function(tmr:FlxTimer)
            {
                FlxG.camera.fade(FlxColor.BLACK, 2, false, function()
                {
                    MusicBeatState.resetState();
                });
            });
            PlayState.instance.callOnScripts('onGameOverConfirm', [true]);
        }
    }

    override function destroy()
    {
        instance = null;
        super.destroy();
    }
}