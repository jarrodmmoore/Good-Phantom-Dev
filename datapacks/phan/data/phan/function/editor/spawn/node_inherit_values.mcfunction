#get values
scoreboard players operation @s editNode = #editNode value
scoreboard players operation @s editLoadArea = #editLoadArea value
scoreboard players operation @s editArea = #editArea value
scoreboard players operation @s editYaw = #editYaw value
scoreboard players operation @s editPitch = #editPitch value
scoreboard players operation @s editArg1 = #editArg1 value
scoreboard players operation @s editArg2 = #editArg2 value
scoreboard players operation @s editArg3 = #editArg3 value

# !! THIS S*** DOESN'T WORK !!
#execute store result entity @s Rotation[0] double 1.0 run scoreboard players get #editYaw value
#execute store result entity @s Rotation[1] double 1.0 run scoreboard players get #editPitch value

#ok fine, we'll use the rotation part of my parameterized teleporty thing
scoreboard players operation @s dummy_yaw = #editYaw value
scoreboard players operation @s dummy_pitch = #editPitch value
scoreboard players operation @s goto_yaw = #editYaw value
scoreboard players operation @s goto_pitch = #editPitch value
execute positioned ~ ~ ~ rotated 0 0 run function phan:warp_to_saved_coords/yaw/_pos_or_neg
scoreboard players reset @s dummy_yaw
scoreboard players reset @s dummy_pitch
scoreboard players reset @s goto_yaw
scoreboard players reset @s goto_pitch
#I guess in 1.21 we can use macros for this kind of thing now? Ah whatever, too late now.

#get specific tags (for @e efficiency)
function phan:editor/panel/repair_tags_go
#^ this used to be inlined right here, but i feel like keeping the list of tags updated in two different places will eventually cause me to bum something
#honestly surpised i've never made that mistake thus far

#tag cleanup
tag @s remove setMe