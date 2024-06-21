#1.. = count down ticks until we should spawn another eye
#0 = spawn something right now
#-1 = spawned. waiting for player to pick up the eye before we can spawn another one

#count down to spawn
scoreboard players remove @s[scores={editArg3=1..}] editArg3 1
scoreboard players remove @s[scores={editArg3=1..}] editArg3 1
scoreboard players remove @s[scores={editArg3=1..}] editArg3 1
scoreboard players remove @s[scores={editArg3=1..}] editArg3 1
scoreboard players remove @s[scores={editArg3=1..}] editArg3 1

#spawn
execute if score @s editArg3 matches 0 run function phan:game/4/spawning/spawn_ever_eye