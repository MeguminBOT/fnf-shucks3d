function onEvent(name, value1, value2)
    if name == 'Videoplayer' then
        if value2 == 'true' then
            startVideo(value1, true, true)      
        elseif value2 == 'false' then
            startVideo(value1, false, true)
        end
        setProperty('inCutscene', false)
    end
end