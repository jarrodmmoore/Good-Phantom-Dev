execute at @s run particle heart ~ ~.5 ~ 0 0 0 1 1

#this will also update rotation
scoreboard players operation @s dummy_yaw = @s editYaw
scoreboard players operation @s dummy_pitch = @s editPitch
scoreboard players operation @s goto_yaw = @s editYaw
scoreboard players operation @s goto_pitch = @s editPitch
execute at @s positioned ~ ~ ~ rotated 0 0 run function phan:warp_to_saved_coords/yaw/_pos_or_neg
scoreboard players reset @s dummy_yaw
scoreboard players reset @s dummy_pitch
scoreboard players reset @s goto_yaw
scoreboard players reset @s goto_pitch

#clear all tags
tag @s remove nodeArea1
tag @s remove nodeArea2
tag @s remove nodeArea3
tag @s remove nodeLoadArea0
tag @s remove nodeLoadArea1
tag @s remove nodeLoadArea2
tag @s remove nodeLoadArea3
tag @s remove nodeLoadArea4
tag @s remove nodeLoadArea5
tag @s remove startPoint
tag @s remove portalCore
tag @s remove portalSlot
tag @s remove targetNode
tag @s remove checkpoint
tag @s remove versusStartPoint
tag @s remove itemBoxSpawner
tag @s remove resetZone
tag @s remove resetZoneSA
tag @s remove loadingZone
tag @s remove volumeTrigger
tag @s remove vsEyeSpawner

#get specific tags?
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