#go to the place
tp @s 849 33 -1036 180 0
gamemode adventure @s

#reset scores and clear inventory
scoreboard players set @s energy 5
scoreboard players set @s enderEyes 0
xp set @s 100 levels
xp set @s 0 points
clear @s
scoreboard players set @s pShowHUD 0
scoreboard players set @s pSubGameState 0
tag @s[tag=practiceCourse] remove practiceCourse
tag @s remove noInventory

#play sound
execute at @s run particle instant_effect ~ ~1 ~ 0.8 0.8 0.8 1 60 force
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2