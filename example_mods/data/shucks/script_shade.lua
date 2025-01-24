local Chromacrap = 1;
amount = 0.003

function boundTo(value, min, max)
    return math.max(min, math.min(max, value))
end

function math.lerp(from,to,i) return from+(to-from)*i end

function setChrome(chromeOffset)
    setShaderFloat("temporaryShader", "rOffset", chromeOffset);
    setShaderFloat("temporaryShader", "gOffset", 0.0);
    setShaderFloat("temporaryShader", "bOffset", chromeOffset * -1);
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
    Chromacrap = Chromacrap + amount; -- edit this
end

function onCreatePost()
    --luaDebugMode = true;
    if (shadersEnabled) then
        initLuaShader("vcr");
        
        makeLuaSprite("temporaryShader");
        makeGraphic("temporaryShader", screenWidth, screenHeight);
        
        setSpriteShader("temporaryShader", "vcr");
        
        addHaxeLibrary("ShaderFilter", "openfl.filters");
        runHaxeCode([[
            trace(ShaderFilter);
            game.camGame.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
            game.camHUD.setFilters([new ShaderFilter(game.getLuaObject("temporaryShader").shader)]);
        ]]);
    end
end

function onUpdate(elapsed)
    if (shadersEnabled) then
        Chromacrap = math.lerp(Chromacrap, 0, boundTo(elapsed * 20, 0, 1));
        setChrome(Chromacrap);
    end
end

function onStepHit()
    if curStep == 512 then
        amount = 0.0025
    end
    if curStep == 640 then
        amount = 0.0035
    end
    if curStep == 1024 then
        amount = 0.01
    end
    if curStep == 1088 then
        amount = 0.0025
    end
    if curStep == 1472 then
        amount = 0.0035
    end
    if curStep == 1728 then
        amount = 0.005
    end
    if curStep == 1856 then
        amount = 0.00025
    end
    if curStep == 1984 then
        amount = 0
    end
    if curStep == 2944 then
        amount = 0.005
    end
    if curStep == 3712 then
        amount = 0.015
    end
    if curStep == 3968 then
        amount = 0.005
    end
    if curStep == 4352 then
        amount = 0.01
    end
end