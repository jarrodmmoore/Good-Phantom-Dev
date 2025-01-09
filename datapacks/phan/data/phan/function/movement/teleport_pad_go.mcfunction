execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.4 1
execute at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.3 0.5 0.3 0 20

#human
$execute if entity @s[type=player] run tp @s $(coord_x) $(coord_y) $(coord_z) $(coord_yaw) $(coord_pitch)
#bot
$execute if entity @s[tag=ai] run function phan:bots/bot_generic_teleport {x:$(coord_x),y:$(coord_y),z:$(coord_z)}
#this is used for a few advancements.
#but i already hard-coded all of the teleporters on the v1.0 levels, so this is probably useless.
#but some custom track creator could maybe use this statistic for something? if they have a phd in Good Phantom, the minecraft java map
scoreboard players add @s[type=player] teleportersUsed 1

execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.4 1
execute at @s run particle falling_dust{block_state:"magenta_concrete"} ~ ~1 ~ 0.3 0.5 0.3 0 20