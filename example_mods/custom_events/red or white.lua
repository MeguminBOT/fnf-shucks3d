function onEvent(name, value1, value2)
    if name == 'red or white' then
        if value1 == 'true' then
            setProperty('redback.visible', true)
            setObjectOrder('redback', 0)
            setProperty('dadGroup.color', getColorFromHex('000000'))
            setProperty('boyfriend.color', getColorFromHex('000000'))
            setProperty('gfGroup.color', getColorFromHex('000000'))
        elseif value1 == 'false' then
            setProperty('redback.visible', false)
            setObjectOrder('redback', 0)
            setProperty('dadGroup.color', getColorFromHex('FFFFFF'))
            setProperty('boyfriend.color', getColorFromHex('FFFFFF'))
            setProperty('gfGroup.color', getColorFromHex('FFFFFF'))
        end
    end
end
