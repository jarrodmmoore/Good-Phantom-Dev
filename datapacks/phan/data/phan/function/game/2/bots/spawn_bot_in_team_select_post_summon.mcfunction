#note: #test = botSkill

#poof into place
function phan:common/varied_teleport_nonplayer
execute if score #beQuiet value matches ..7 at @s run particle instant_effect ~ ~1 ~ 0.8 0.8 0.8 1 60 force
execute if score #beQuiet value matches ..1 if score #test value matches ..1 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 1.6
execute if score #beQuiet value matches ..1 if score #test value matches 2 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 1.7
execute if score #beQuiet value matches ..1 if score #test value matches 3 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 1.8
execute if score #beQuiet value matches ..1 if score #test value matches 4 at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 1.9
execute if score #beQuiet value matches ..1 if score #test value matches 5.. at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2
execute if score #beQuiet value matches ..1 if score #test value matches 6 at @s run playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ .5 1.8 .5
execute if score #beQuiet value matches 1.. run scoreboard players add #beQuiet value 1

#use age as our ID, I guess
scoreboard players operation @s age = #setID value

#put the proper head on our head
execute unless score #test value matches 2..6 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111115]
execute if score #test value matches 2 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111116]
execute if score #test value matches 3 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111117]
execute if score #test value matches 4 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111118]
execute if score #test value matches 5 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111119]
execute if score #test value matches 6 run item replace entity @s armor.head with light_blue_wool[custom_model_data=1111120]

#scores/tags
team join player @s
scoreboard players set @s lifespan 5
tag @s remove setMe