#don't restore too much energy when going through blue rings. they're powerful enough already...
scoreboard players add @s[scores={energy=..17}] energy 1
#scoreboard players add @s[scores={energy=..17}] energy 1
#scoreboard players add @s[scores={energy=..17}] energy 1

#this change was mostly done to be consistent with Versus mode, where blue rings had to be nerfed to not give energy

scoreboard players add @s addScore 200

execute if score @s combo matches ..0 at @s run playsound minecraft:custom_sfx/nights master @a ~ ~ ~ 2.5 1
execute if score @s combo matches 1 at @s run playsound minecraft:custom_sfx/nights master @a ~ ~ ~ 2.5 1.5
execute if score @s combo matches 2 at @s run playsound minecraft:custom_sfx/nights master @a ~ ~ ~ 2.5 1.25
execute if score @s combo matches 3 at @s run playsound minecraft:custom_sfx/nights master @a ~ ~ ~ 2.5 1.8
execute if score @s combo matches 4.. at @s run playsound minecraft:custom_sfx/nights master @a ~ ~ ~ 2.5 2

function phan:game/1/player/count_combo