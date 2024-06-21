#1.. = count down ticks until we should spawn another box
#0 = spawn something right now
#-1 = spawned. waiting for player to pick up the chest before we can spawn another one

#count down to spawn
execute if score #vGameType value matches 2 run scoreboard players add @s[scores={editArg3=1..}] editArg3 4
scoreboard players remove @s[scores={editArg3=1..}] editArg3 1
scoreboard players remove @s[scores={editArg3=1..}] editArg3 1
scoreboard players remove @s[scores={editArg3=1..}] editArg3 1
scoreboard players remove @s[scores={editArg3=1..}] editArg3 1
scoreboard players remove @s[scores={editArg3=1..}] editArg3 1

#visuals. indicate how long until respawn
execute if score @s editArg3 matches 1.. positioned ~ ~.5 ~ run function phan:game/4/item_box_respawn_particles

#spawn
execute if score @s editArg3 matches 0 run function phan:game/4/spawning/spawn_item_box