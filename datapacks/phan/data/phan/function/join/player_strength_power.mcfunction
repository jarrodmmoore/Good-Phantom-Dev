#not in spectator mode...
execute if entity @s[gamemode=spectator] run scoreboard players set @s strengthTime 0

#strength
scoreboard players remove @s strengthTime 1
execute if score @s strengthTime matches 10.. run particle dust{color:[1,0,0],scale:1} ~ ~1 ~ 0.9 0.5 0.9 0 2 force
execute if score @s strengthTime matches 10.. positioned ~ ~1.7 ~ run particle dust{color:[1,0,0],scale:1} ^ ^ ^5 0.5 0.5 0.5 0 2 force @s

#swap back to normal head model at the end
execute if score @s strengthTime matches 0 run function phan:join/player_get_equipment
execute if score @s strengthTime matches 0 run playsound minecraft:block.beacon.deactivate master @s[gamemode=!spectator] ~ ~ ~ 1.2 1.8
execute if score @s strengthTime matches 0 run scoreboard players set @s enemiesBeatRed 0