package states;

import lime.app.Application;

import flixel.FlxObject;
import flixel.addons.transition.FlxTransitionableState;
import flixel.effects.FlxFlicker;
import flixel.ui.FlxButton;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;
import flixel.FlxG;
import flixel.group.FlxGroup;
import flixel.graphics.FlxGraphic;
import flixel.text.FlxText;
import flixel.FlxSprite;

import backend.WeekData;
import backend.Highscore;
import backend.Song;
import backend.StageData;

import states.editors.MasterEditorMenu;
import options.OptionsState;
import options.GameplayChangersSubstate;

class MainMenuState extends MusicBeatState
{
    public static var psychEngineVersion:String = '1.0.1'; // This is also used for Discord RPC
    public static var catnapVersion:String = '1.0'; // This is also used for Discord RPC
    public static var curSelected:Int = 0;
    
    private static var curWeek:Int = 0;

	var bg:FlxSprite;
    var startButtonSprite:FlxSprite;
    var startButton:FlxButton;
    var creditsButton:FlxButton;
    var optionButton:FlxButton;
	var sprite:FlxSprite;
    var arrowLEFT:FlxButton;
    var arrowRIGHT:FlxButton;
    var difficultyText:FlxSprite;

    var difficultyList:Array<String> = ["Normal", "Hard", "Insane"];
    var selectedDifficulty:String = "Hard";
    var curDifficulty:Int = 1;
    var difficultyGroup:FlxGroup;

    override function create()
    {
        FlxG.mouse.visible = true;

        #if MODS_ALLOWED
        Mods.pushGlobalMods();
        #end
        Mods.loadTopMod();

        #if DISCORD_ALLOWED
        // Updating Discord Rich Presence
        DiscordClient.changePresence("Main Menu", null);
        #end

        persistentUpdate = persistentDraw = true;

        // BG
		bg = new FlxSprite(0, 0).loadGraphic(Paths.image('bg'));
		bg.frames = Paths.getSparrowAtlas('bg');
		bg.animation.addByPrefix('play', 'idle', 24, true);
		bg.antialiasing = ClientPrefs.data.antialiasing;
		bg.alpha = 0.25;
		bg.updateHitbox();
		bg.animation.play('play');
		add(bg);

        // Version text
        var psychVer:FlxText = new FlxText(1075, FlxG.height - 24, 0, "Psych Engine v" + psychEngineVersion, 12);
        psychVer.scrollFactor.set();
        psychVer.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        add(psychVer);

        var catnapVersion:FlxText = new FlxText(12, FlxG.height - 24, 0, "Shucks 3D v" + catnapVersion, 12);
        catnapVersion.scrollFactor.set();
        catnapVersion.setFormat("VCR OSD Mono", 16, FlxColor.WHITE, LEFT, FlxTextBorderStyle.OUTLINE, FlxColor.BLACK);
        add(catnapVersion);

        // Start button
        startButtonSprite = new FlxSprite(0, 0).loadGraphic(Paths.image('buttonDoor'), true, 0, 0);
        startButtonSprite.frames = Paths.getSparrowAtlas('buttonDoor');
        startButtonSprite.scale.set(0.55, 0.55);
        startButtonSprite.animation.addByPrefix('idleClose', 'idleClose0', 24, true);
        startButtonSprite.animation.addByPrefix('idleOpen', 'idleOpen0', 24, true);
        startButtonSprite.animation.addByPrefix('open', 'open0', 24, false);
        startButtonSprite.animation.addByPrefix('close', 'close0', 24, false);
        startButtonSprite.animation.play('idleClose', true);
        startButtonSprite.updateHitbox();
        startButtonSprite.screenCenter();
        startButtonSprite.antialiasing = ClientPrefs.data.antialiasing;
        add(startButtonSprite);

        startButton = new FlxButton(startButtonSprite.x, startButtonSprite.y, "", startButtonPress);
        startButton.makeGraphic(Std.int(startButtonSprite.width), Std.int(startButtonSprite.height), 0x00000000);
        startButton.onOver.callback = startButtonHighlight.bind();
        startButton.onOut.callback = startButtonDeselect.bind();
        add(startButton);

        startButton.onOver.callback = startButtonHighlight.bind();
        startButton.onOut.callback = startButtonDeselect.bind(); 

        // Options button
        optionButton = new FlxButton(0, 0, " ", optionsButtonPress);
        optionButton.loadGraphic(Paths.image('buttonOptions'), true, 379, 123);
        optionButton.screenCenter();
        optionButton.antialiasing = ClientPrefs.data.antialiasing;
        optionButton.x = 800;
        optionButton.y = 300;
        add(optionButton);

        // Credits button
        creditsButton = new FlxButton(0, 0, " ", creditsButtonPressed);
        creditsButton.loadGraphic(Paths.image('buttonCredits'), true, 362, 110);
        creditsButton.screenCenter();
        creditsButton.antialiasing = ClientPrefs.data.antialiasing;
        creditsButton.x = 100;
        creditsButton.y = 310;
        add(creditsButton);

		// Difficulty stuff
        difficultyGroup = new FlxGroup();
        for (difficulty in difficultyList) {
            sprite = new FlxSprite(0, 0).loadGraphic(Paths.image('menudifficulties/' + difficulty.toLowerCase()));
			sprite.scale.set(0.7, 0.7);
			sprite.updateHitbox();
			sprite.screenCenter();
            sprite.antialiasing = ClientPrefs.data.antialiasing;
            sprite.y = 600;
            sprite.visible = false;
            difficultyGroup.add(sprite);
        }
        difficultyGroup.members[curDifficulty].visible = true;
        add(difficultyGroup);

		arrowLEFT = new FlxButton(0, 0, " ", arrowLEFTpress);
		arrowLEFT.loadGraphic(Paths.image('arrowLEFT'), true, 135, 95);
		arrowLEFT.scale.set(0.55, 0.55);
		arrowLEFT.updateHitbox();
		arrowLEFT.screenCenter();
        arrowLEFT.antialiasing = ClientPrefs.data.antialiasing;
		arrowLEFT.x = sprite.x - 62;
		arrowLEFT.y = sprite.y + 6;
		add(arrowLEFT);
		
		arrowRIGHT = new FlxButton(0, 0, " ", arrowRIGHTpress);
		arrowRIGHT.loadGraphic(Paths.image('arrowRIGHT'), true, 135, 95);
		arrowRIGHT.scale.set(0.55, 0.55);
		arrowRIGHT.updateHitbox();
		arrowRIGHT.screenCenter();
        arrowRIGHT.antialiasing = ClientPrefs.data.antialiasing;
		arrowRIGHT.x = sprite.x + 166;
		arrowRIGHT.y = sprite.y + 6;
		add(arrowRIGHT);

        difficultyText = new FlxSprite(0, 0).loadGraphic(Paths.image('difficultyText'));
        difficultyText.scale.set(0.7, 0.7);
        difficultyText.updateHitbox();
        difficultyText.screenCenter();
        difficultyText.antialiasing = ClientPrefs.data.antialiasing;
		difficultyText.y = sprite.y - 24;
        add(difficultyText);
    }

    function startButtonPress()
    {
        persistentUpdate = false;
        startButtonSprite.animation.play('idleOpen', true);
        FlxG.mouse.visible = false;

		var diff = selectedDifficulty.toLowerCase();
		if (diff == 'hard' || diff == 'insane') {
			PlayState.SONG = Song.loadFromJson('shucks-' + diff, 'shucks');
            LoadingState.prepareToSong();
            new FlxTimer().start(0.1, function(tmr:FlxTimer) {
                FlxTween.tween(FlxG.camera, {zoom: 15}, 1, {type: FlxTween.PERSIST, ease: FlxEase.cubeIn, onComplete: goToPlayState});
            });
		} else {
			PlayState.SONG = Song.loadFromJson('shucks', 'shucks');
            LoadingState.prepareToSong();
            new FlxTimer().start(0.1, function(tmr:FlxTimer) {
                FlxTween.tween(FlxG.camera, {zoom: 15}, 1, {type: FlxTween.PERSIST, ease: FlxEase.cubeIn, onComplete: goToPlayState});
            });
		}
        FlxG.sound.music.volume = 0;
    }

    function goToPlayState(tween:FlxTween):Void
    {
        LoadingState.loadAndSwitchState(new PlayState());
    }

    function startButtonHighlight()
    {
        persistentUpdate = false;
        FlxG.sound.play(Paths.sound('doorOpen'));
        startButtonSprite.animation.play('open');
        startButtonSprite.animation.finishCallback = function(name:String) {
            trace('Animation finished: ' + name);
            if (name == 'open') {
                trace('Playing idleOpen');
                startButtonSprite.animation.play('idleOpen', true);
            }
        };
    }

    function startButtonDeselect()
    {
        persistentUpdate = false;
        startButtonSprite.animation.play('close');
        startButtonSprite.animation.finishCallback = function(name:String) {
            trace('Animation finished: ' + name);
            if (name == 'close') {
                trace('Playing idleClose');
                startButtonSprite.animation.play('idleClose', true);
            }
        };
    }

    function creditsButtonPressed()
    {
        persistentUpdate = false;
        MusicBeatState.switchState(new CreditsState());
    }

    function arrowLEFTpress()
    {
        difficultyGroup.members[curDifficulty].visible = false;
        curDifficulty = (curDifficulty - 1 + difficultyList.length) % difficultyList.length;
        selectedDifficulty = difficultyList[curDifficulty];
        difficultyGroup.members[curDifficulty].visible = true;
    }

    function arrowRIGHTpress()
    {
        difficultyGroup.members[curDifficulty].visible = false;
        curDifficulty = (curDifficulty + 1) % difficultyList.length;
        selectedDifficulty = difficultyList[curDifficulty];
        difficultyGroup.members[curDifficulty].visible = true;
    }

    function optionsButtonPress()
    {
        persistentUpdate = false;
        MusicBeatState.switchState(new OptionsState());
        OptionsState.onPlayState = false;
        if (PlayState.SONG != null) {
            PlayState.SONG.arrowSkin = null;
            PlayState.SONG.splashSkin = null;
            PlayState.stageUI = 'normal';
        }
    }

    override function update(elapsed:Float)
    {
        if (FlxG.sound.music.volume < 0.8) {
            FlxG.sound.music.volume = Math.min(FlxG.sound.music.volume + 0.5 * elapsed, 0.8);

            if (controls.justPressed('debug_1')) {
                MusicBeatState.switchState(new MasterEditorMenu());
            }
        }

        if(FlxG.keys.justPressed.CONTROL)
        {
            persistentUpdate = false;
            openSubState(new GameplayChangersSubstate());
        }

        super.update(elapsed);
    }

    override function closeSubState()
    {
        persistentUpdate = true;
        super.closeSubState();
    }
}