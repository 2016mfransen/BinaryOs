-- Variables
local guiapi = {}
guiapi.controls = {};
--Functions

--Draws a control
function draw(control)
	-- Check if it's a control
	if control["type"] ~= nil then
		-- Check if it's a valid control
		if guiapi.controls[control["type"]]~=nil then
			guiapi.controls.draw(control);
			control.onDraw();
		end
	end
	-- Assume it's a collection of controls and draw them all
	for _,v in pairs(control) do
		draw(v);
	end
end

--Let's make some controls
-- Button
guiapi.controls.button = {}
-- create a new instance
-- required properties = name, x, y, text, background, foreground, width (defaults to text length), height (defaults to 1), offset (table) requiring an x and y value for text which both default to 0 
function guiapi.controls.button.new(properties)
	local self = properties;
	function self:onDraw(){};
end

return guiapi;