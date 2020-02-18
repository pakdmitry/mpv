--makes mpv disable ontop when pausing and re-enable it again when resuming playback
--please note that this won't do anything if ontop was not enabled before pausing

local was_ontop = false

mp.observe_property("pause", "bool", function(name, value)
    if value == true then
       mp.set_property_native("ontop", false)
    end
    if value == false then
       mp.set_property_native("ontop", true)
    end
end)