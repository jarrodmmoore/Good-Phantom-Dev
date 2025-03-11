scoreboard players add @s age 1

execute if score @s age matches ..40 at @s run return 0
#=====

#if we've been alive for 2+ seconds, fizzle out automatically
particle large_smoke ~ ~.25 ~ 0.1 0.1 0.1 0.05 5
scoreboard players set @s lifespan 0
tag @s remove fizzleOnGround
tag @s remove groundDeploy

#this stops items living forever on cobwebs, water, or block edges