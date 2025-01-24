-- Too lazy to rewrite Pourias lua stage due to object ordering, so I'll just precache stuff here. --Lulu
function onCreate()
    local images = {
        'yourturn',
        'whiteui',
        'red',
        'black',
        'white',
        'blood',
        'logo',
        'shucks',
        'shucksdoor',
        'light',
        'yellowlight',
        'chain',
        'deadfore',
        'shucksbg',
        'shucksbg2',
        'hook',
        'hook2',
        'box',
        'shucksvs',
        'lightning',
        'fire',
        'fire2',
        'redbg',
        'breakdown'
    }
    
    for _, image in ipairs(images) do
        precacheImage(image, true)
    end
end