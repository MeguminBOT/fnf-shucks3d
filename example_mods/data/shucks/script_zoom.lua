local customCamZoom = true
local zoomValue = 0.6 -- Default zoom value

function onCreate()
	if not customCamZoom then
        return
    end
end

function onUpdate()
    setProperty('defaultCamZoom', zoomValue)
end

function onStepHit()
	if curStep >= 0 and curStep <= 640 then
        zoomValue = mustHitSection and 0.65 or 0.8
    elseif curStep >= 640 and curStep <= 1024 then
        zoomValue = mustHitSection and 0.6 or 0.5
    elseif curStep >= 1024 and curStep <= 1240 then
        zoomValue = mustHitSection and 1.1 or 1
    elseif curStep >= 1344 and curStep <= 1472 then
        zoomValue = mustHitSection and 1.5 or 1
    elseif curStep >= 1472 and curStep <= 1728 then
        zoomValue = mustHitSection and 0.6 or 0.5
    elseif curStep >= 1728 and curStep <= 1984 then
        zoomValue = mustHitSection and 0.8 or 0.7
    elseif curStep >= 1984 and curStep <= 2816 then
        zoomValue = mustHitSection and 1 or 0.9
    elseif curStep >= 2816 and curStep <= 2944 then
        zoomValue = mustHitSection and 0.3 or 0.3
    elseif curStep >= 2944 and curStep <= 3456 then
        zoomValue = mustHitSection and 1 or 1
    elseif curStep >= 3456 and curStep <= 3712 then
        zoomValue = mustHitSection and 0.6 or 0.5
    elseif curStep >= 3712 and curStep <= 3968 then
        zoomValue = mustHitSection and 0.4 or 0.4
    elseif curStep >= 3968 and curStep <= 4352 then
        zoomValue = mustHitSection and 0.5 or 0.5
    elseif curStep >= 4352 and curStep <= 5000 then
        zoomValue = mustHitSection and 0.7 or 0.7
    end
end

-- function onSectionHit()
-- 	zoomDebug = getProperty('defaultCamZoom')
-- 	sectionDebug = tostring(mustHitSection)
-- 	debugPrint(" Camera zoom: " .. zoomDebug .. " | Must hit section: " .. sectionDebug)
-- end