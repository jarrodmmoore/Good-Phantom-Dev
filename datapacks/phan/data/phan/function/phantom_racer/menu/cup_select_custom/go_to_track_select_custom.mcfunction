#reject if admin is required and player is not admin
scoreboard players set #success value 1
execute if score #grandPrixEditAdminOnly value matches 1 run scoreboard players set #success value 0
execute if score #grandPrixEditAdminOnly value matches 1 as @e[type=armor_stand,tag=gameControllerPlayerHolder,distance=..10] on passengers if entity @s[tag=admin] run scoreboard players set #success value 1
execute if score #success value matches 0 as @e[type=armor_stand,tag=gameControllerPlayerHolder,distance=..10] on passengers run tellraw @s ["",{translate:"gp.misc.need_admin_tag",color:"red"}]
execute if score #success value matches 0 run return run playsound block.note_block.bass master @a ~ ~ ~ 1 1.8
#=====

#set values and go
scoreboard players set #tvLoadImpulse value 1
scoreboard players set #tvMenuPage value 4
scoreboard players set #tvAnimation value 0

#set to edit mode and remember which cup id we're working with
scoreboard players set #tvEditingGrandPrix value 1
execute if score #tvMenuState1 value matches 1 run scoreboard players set #tvEditingTarget value 1001
execute if score #tvMenuState1 value matches 2 run scoreboard players set #tvEditingTarget value 1002
execute if score #tvMenuState1 value matches 3 run scoreboard players set #tvEditingTarget value 1003

#send players back here next time lobby is reloaded
scoreboard players set #tvRememberPage value 4

#clean up the stuff we summoned for the random panel
execute as @e[type=text_display,tag=tvCustomPanel] run scoreboard players set @s lifespan 0
execute as @e[type=item_display,tag=tvCustomPanelBackground,distance=..10] run data merge entity @s {start_interpolation:-1,interpolation_duration:6,transformation:{scale:[0.0f,0.0f,1.0f]}}
execute as @e[type=item_display,tag=tvCustomPanelBackground,distance=..10] run scoreboard players set @s lifespan 6
scoreboard players set @e[type=item_display,tag=tvTempHighlight] lifespan 0

#sound
function phan:phantom_racer/menu/click_sound_effect
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1.25