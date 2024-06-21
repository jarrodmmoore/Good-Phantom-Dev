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

#get specific tags? (for @e efficiency)
execute if score @s editNode matches 7 run tag @s add startPoint
execute if score @s editNode matches 8 run tag @s add portalCore
execute if score @s editNode matches 9 run tag @s add portalSlot
execute if score @s editNode matches 14 run tag @s add targetNode
execute if score @s editNode matches 15 run tag @s add itemBoxSpawner
execute if score @s editNode matches 18 run tag @s add checkpoint
execute if score @s editNode matches 19 run tag @s add versusStartPoint
execute if score @s editNode matches 20 run tag @s add resetZone
execute if score @s editNode matches 21 run tag @s add resetZoneSA
execute if score @s editNode matches 22 run tag @s add loadingZone
execute if score @s editNode matches 21..22 run tag @s add volumeTrigger
execute if score @s editNode matches 23 run tag @s add vsEyeSpawner

#area tags
execute if score @s editArea matches 1 run tag @s add nodeArea1
execute if score @s editArea matches 2 run tag @s add nodeArea2
execute if score @s editArea matches 3 run tag @s add nodeArea3
#load area tags
execute if score @s editLoadArea matches 0 run tag @s add nodeLoadArea0
execute if score @s editLoadArea matches 1 run tag @s add nodeLoadArea1
execute if score @s editLoadArea matches 2 run tag @s add nodeLoadArea2
execute if score @s editLoadArea matches 3 run tag @s add nodeLoadArea3
execute if score @s editLoadArea matches 4 run tag @s add nodeLoadArea4
execute if score @s editLoadArea matches 5 run tag @s add nodeLoadArea5


#tag cleanup
tag @s remove setMe