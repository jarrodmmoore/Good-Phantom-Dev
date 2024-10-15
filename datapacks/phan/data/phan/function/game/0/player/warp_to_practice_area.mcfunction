#go to the place
tp @s 859 33 -1054 90 0
effect give @s blindness 2 1 true
effect give @s slow_falling 1 0 true
scoreboard players set @s skyboxSet 1
execute if score #gameState value matches 0 run tag @s add playing

#reset scores and clear inventory
scoreboard players set @s energy 5
scoreboard players set @s enderEyes 0
xp set @s 100 levels
xp set @s 0 points
clear @s
scoreboard players set @s pShowHUD 0
scoreboard players set @s pSubGameState 0
tag @s[tag=practiceCourse] remove practiceCourse

#if all players are in the practice area, hide sidebar if something's on there
execute if score #gameState value matches 0 unless entity @a[tag=!playing] run scoreboard objectives setdisplay sidebar

#start running logic for the HUD if it's no already running
scoreboard players set #showHUD value 1

#play sound
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ 100000 ~ 100000 .8

#practice area music
scoreboard players set @s musicTrack 12
function phan:bgm/set_self_bgm_delayed