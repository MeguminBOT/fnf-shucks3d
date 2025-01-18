--[[
>>> Toggleable Add Camera Zoom Event for Psych Engine. // AutisticLulu
>>> Triggers Add Camera Zoom events on every beat or between a set number of beats.

Value 1:
	Parameters: "Stage Zoom, Hud Zoom"
	(Example: 0.015, 0.03)

Value 2:
	Parameters: [On/Off, Number of beats between zoom]
	(Example: On, 2)

	Defaults to 1 if no number is provided.
]]

-- Define local variables.
local isActive = false
local zoomValues = nil
local beatTrigger = 1 -- Default value
local beatCount = 0

-- This function is called when an event occurs.
function onEvent(name, value1, value2)
	if name == 'Toggle Zoom on Beat' or name == 'Toggle_Zoom_on_Beat' and cameraZoomOnBeat then
		zoomValues = value1
		local toggle, beat = parseToggleAndBeat(value2)
		if toggle == 'On' then
			isActive = true
		elseif toggle == 'Off' then
			isActive = false
		end
		if beat then
			beatTrigger = beat
		end
	end
end

function onBeatHit()
	beatCount = beatCount + 1
	if isActive and beatCount % beatTrigger == 0 then
		local gameZoom, hudZoom = parseZoomValues(zoomValues)
		triggerEvent("Add Camera Zoom", gameZoom, hudZoom)
	end
end

-- Helper function: Parses the gameZoom and hudZoom values from the input string.
function parseZoomValues(value)
	return value:gsub(' ', ''):match('([^,]*),([^,]*)')
end

-- Helper function: Parses the toggle and beat values from the input string.
function parseToggleAndBeat(value)
	local toggle, beat = value:gsub(' ', ''):match('([^,]*),([^,]*)')
	if beat then
		beat = tonumber(beat)
	end
	return toggle, beat
end