#go to a point on the start grid!
function phan:game/4/race/start_grid/player

#sounds and stuff
execute at @s run particle instant_effect ~ ~1 ~ 0.8 0.8 0.8 1 60 force
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2

#cancel momentum
execute at @s run tp @s @s

#get vertical launch if that's a thing we have
execute if score @s vsRespawnLaunch matches 1.. run function phan:items/launch_effect

#cooldown on respawn
scoreboard players set @s inputCooldownB 40
scoreboard players set @s inputCooldownC 7