#note: tags are already defined

#set id value
scoreboard players operation @s AIBC_id = #waypointID value

#apply the rest of the values in here
function phan:editor/panel/ai_waypoint/tools/waypoint_edit/convert_spread_to_rotation_coords
function phan:editor/panel/ai_waypoint/tools/waypoint_edit/apply_waypoint_data with storage phan:ai_waypoint

#automatically check if airborne
execute if block ~ ~-1 ~ #phan:not_solid_not_water if block ~ ~-2 ~ #phan:not_solid_not_water run tag @s add AIBC_midAir

#tag cleanup
tag @s remove setMe