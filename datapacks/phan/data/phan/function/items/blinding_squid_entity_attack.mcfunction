scoreboard players add @s age 1

#i am i
tag @s add squidEnt

#identify target player
scoreboard players operation #getID value = @s playerID
execute as @a[tag=doneWithIntro] if score @s playerID = #getID value run tag @s add squidTarget
execute if score #botsEnabled value matches 1.. as @e[tag=ai,type=zombie] if score @s playerID = #getID value run tag @s add squidTarget

#follow target's view
execute as @a[tag=squidTarget,limit=1] at @s anchored eyes positioned ^ ^ ^5 if loaded ~ ~ ~ run tp @e[type=squid,tag=squidEnt] ~ ~ ~ ~ ~
execute if score #botsEnabled value matches 1.. as @e[type=zombie,tag=squidTarget,limit=1] at @s anchored eyes positioned ^ ^ ^5 if loaded ~ ~ ~ run tp @e[type=squid,tag=squidEnt] ~ ~ ~ ~ ~

#stay alive as long as we're following someone
execute if entity @a[tag=squidTarget] run scoreboard players set @s lifespan 5
execute if score #botsEnabled value matches 1.. if entity @e[type=zombie,tag=squidTarget,limit=1] run scoreboard players set @s lifespan 5

#do stuff over time
execute if score @s age matches 20 at @s run playsound minecraft:entity.squid.hurt master @a ~ ~ ~ 3 1
execute if score @s age matches 36 at @s run playsound minecraft:entity.squid.squirt master @a ~ ~ ~ 3 1
execute if score @s age matches 36 at @s run particle squid_ink ~ ~ ~ 0.2 0.2 0.2 0.1 20 force @a[tag=squidTarget]
execute if score @s age matches 36 at @s run scoreboard players set @a[tag=squidTarget] squidBlindTime 56
execute if score @s age matches 36 if score #botsEnabled value matches 1.. at @s run scoreboard players set @e[tag=squidTarget,type=zombie] squidBlindTime 56
#die after 3sec
execute if score @s age matches 60.. run scoreboard players set @s lifespan 2
execute if score @s age matches 60.. run tag @s remove tickObject

#particles upon death
execute if score @s lifespan matches 2 at @s run particle poof ~ ~.25 ~ 0.2 0.2 0.2 .02 10 force

#clean up tags
tag @a[tag=squidTarget] remove squidTarget
execute if score #botsEnabled value matches 1.. run tag @e[tag=squidTarget,type=zombie] remove squidTarget
tag @s remove squidEnt