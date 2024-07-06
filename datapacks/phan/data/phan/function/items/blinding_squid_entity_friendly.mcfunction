scoreboard players add @s age 1
scoreboard players set @s lifespan 5

#fly forward and away (if able)
particle instant_effect ~ ~ ~ 0.2 0.2 0.2 0.1 2
execute store result score #test value run execute if block ~ ~.55 ~ #phan:not_solid
execute if score #test value matches 1 run tp @s ~ ~.55 ~
execute if score #test value matches 0 run scoreboard players add @s age 20

#do stuff over time
execute if score @s age matches 10 at @s run playsound minecraft:entity.squid.ambient master @a ~ ~ ~ 3 1
#die after 3sec
execute if score @s age matches 60.. run scoreboard players set @s lifespan 2
execute if score @s age matches 60.. run tag @s remove tickObject

#particles upon death
execute if score @s lifespan matches 2 at @s run particle poof ~ ~.25 ~ 0.2 0.2 0.2 .02 10 force